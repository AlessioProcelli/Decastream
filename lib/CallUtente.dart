import 'dart:async';

import 'package:adobe_xd/pinned.dart';
import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:agora_rtc_engine/rtc_local_view.dart' as RtcLocalView;
import 'package:agora_rtc_engine/rtc_remote_view.dart' as RtcRemoteView;
import 'package:everstream/NostriWidgetss/ChatLista.dart';
import 'package:flutter/material.dart';
import 'Ridimensiona.dart';
import 'main.dart';
import 'utils/settings.dart';

class CallUtente extends StatefulWidget {
  /// non-modifiable channel name of the page
  final String channelName;

  /// non-modifiable client role of the page
  final ClientRole role=ClientRole.Broadcaster;

  /// Creates a call page with given channel name.
 CallUtente({Key key, this.channelName}) : super(key: key);

  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallUtente> {
  final List<String> messagelist=[];
  final _users = <int>[];
 final _infoStrings = <String>[];
  bool muted = false;
  RtcEngine _engine;
  final controllerMessageChat=TextEditingController(text:"Scrivi il Messaggio Qui..");

  @override
  void dispose() {
    // clear users
    _users.clear();
    // destroy sdk
    _engine.leaveChannel();
    _engine.destroy();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // initialize agora sdk
    initialize();
  }

  Future<void> initialize() async {
    if (APP_ID.isEmpty) {
      setState(() {
        _infoStrings.add(
          'APP_ID missing, please provide your APP_ID in settings.dart',
        );
        _infoStrings.add('Agora Engine is not starting');
      });
      return;
    }

    await _initAgoraRtcEngine();
    _addAgoraEventHandlers();
    await _engine.enableWebSdkInteroperability(true);
    VideoEncoderConfiguration configuration = VideoEncoderConfiguration();
    configuration.dimensions = VideoDimensions(1920, 1080);
    await _engine.setVideoEncoderConfiguration(configuration);
    await _engine.joinChannel(null, widget.channelName, null, 0);
  }

  /// Create agora sdk instance and initialize
  Future<void> _initAgoraRtcEngine() async {
    _engine = await RtcEngine.create(APP_ID);
    await _engine.enableVideo();
    await _engine.setChannelProfile(ChannelProfile.LiveBroadcasting);
    await _engine.setClientRole(widget.role);
  }

  /// Add agora event handlers
  void _addAgoraEventHandlers() {
    _engine.setEventHandler(RtcEngineEventHandler(error: (code) {
      setState(() {
        final info = 'onError: $code';
        _infoStrings.add(info);
      });
    }, joinChannelSuccess: (channel, uid, elapsed) {
      setState(() {
        final info = 'onJoinChannel: $channel, uid: $uid';
        _infoStrings.add(info);
      });
    }, leaveChannel: (stats) {
      setState(() {
        _infoStrings.add('onLeaveChannel');
        _users.clear();
      });
    }, userJoined: (uid, elapsed) {
      setState(() {
        final info = 'userJoined: $uid';
        _infoStrings.add(info);
        _users.add(uid);
      });
    }, userOffline: (uid, elapsed) {
      setState(() {
        final info = 'userOffline: $uid';
        _infoStrings.add(info);
        _users.remove(uid);
      });
    }, firstRemoteVideoFrame: (uid, width, height, elapsed) {
      setState(() {
        final info = 'firstRemoteVideo: $uid ${width}x $height';
        _infoStrings.add(info);
      });
    }));
  }

  /// Helper function to get list of native views
  List<Widget> _getRenderViews() {
    final List<StatefulWidget> list = [];
    if (widget.role == ClientRole.Broadcaster) {
      list.add(RtcLocalView.SurfaceView());
    }
    _users.forEach((int uid) => list.add(RtcRemoteView.SurfaceView(uid: uid)));
    return list;
  }

  /// Video view wrapper
  Widget _videoView(view) {
    return Expanded(child: Container(child: view));
  }

  /// Video view row wrapper
  Widget _expandedVideoRow(List<Widget> views) {
    final wrappedViews = views.map<Widget>(_videoView).toList();
    return Expanded(
      child: Row(
        children: wrappedViews,
      ),
    );
  }

  /// Video layout wrapper
  Widget _viewRows() {
    final views = _getRenderViews();
    switch (views.length) {
      case 1:
        return Container(
            child: Column(
          children: <Widget>[_videoView(views[0])],
        ));
      case 2:
        return Container(
            child: Column(
          children: <Widget>[
            _expandedVideoRow([views[0]]),
            _expandedVideoRow([views[1]])
          ],
        ));
      case 3:
        return Container(
            child: Column(
          children: <Widget>[
            _expandedVideoRow(views.sublist(0, 2)),
            _expandedVideoRow(views.sublist(2, 3))
          ],
        ));
      case 4:
        return Container(
            child: Column(
          children: <Widget>[
            _expandedVideoRow(views.sublist(0, 2)),
            _expandedVideoRow(views.sublist(2, 4))
          ],
        ));
      default:
    }
    return Container();
  }

  /// Toolbar layout
  Widget _toolbar() {
    if (widget.role == ClientRole.Audience) return Container();
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.symmetric(vertical: 48),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RawMaterialButton(
            onPressed: _onToggleMute,
            child: Icon(
              muted ? Icons.mic_off : Icons.mic,
              color: muted ? Colors.white : Colors.blueAccent,
              size: 20.0,
            ),
            shape: CircleBorder(),
            elevation: 2.0,
            fillColor: muted ? Colors.blueAccent : Colors.white,
            padding: const EdgeInsets.all(12.0),
          ),
          RawMaterialButton(
            onPressed: () => _onCallEnd(context),
            child: Icon(
              Icons.call_end,
              color: Colors.white,
              size: 35.0,
            ),
            shape: CircleBorder(),
            elevation: 2.0,
            fillColor: Colors.redAccent,
            padding: const EdgeInsets.all(15.0),
          ),
          RawMaterialButton(
            onPressed: _onSwitchCamera,

            child: Icon(
              Icons.switch_camera,
              color: Colors.blueAccent,
              size: 20.0,
            ),
            shape: CircleBorder(),
            elevation: 2.0,
            fillColor: Colors.white,
            padding: const EdgeInsets.all(12.0),
          )
        ],
      ),
    );
  }

  /// Info panel to show logs
 /* Widget _panel() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 48),
      alignment: Alignment.bottomCenter,
      child: FractionallySizedBox(
        heightFactor: 0.5,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 48),
          child: ListView.builder(
            reverse: true,
            itemCount: _infoStrings.length,
            itemBuilder: (BuildContext context, int index) {
              if (_infoStrings.isEmpty) {
                return null;
              }
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 3,
                  horizontal: 10,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 2,
                          horizontal: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.yellowAccent,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          _infoStrings[index],
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }*/

  void _onCallEnd(BuildContext context) {
    Navigator.pop(context);
  }

  void _onToggleMute() {
    setState(() {
      muted = !muted;
    });
    _engine.muteLocalAudioStream(muted);
  }

  void _onSwitchCamera() {
    _engine.switchCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: <Widget>[
            Container( // contiene la finestra di live
            height:RicalcoloHeight(680.0, context),
            child:_viewRows(),

            ),
            ElevatedButton(
              child:Text("ok"),
              onPressed: (){
                Prova();
              },
            ),
            /*_panel(),*/
            /*_toolbar(),*/
        Container( //Contiene Profilo Chaiamante
          margin:  EdgeInsets.only(left:RicalcoloWidth(10.0, context),top:RicalcoloHeight(24.0, context)),
        child:AziendaChiamante(),
        ),


            Container( // barra chat
              margin:  EdgeInsets.only(left:RicalcoloWidth(1.0, context),top:RicalcoloHeight(660.0, context)),
              child: BarraChat(),
            ),


            Transform.translate( //barra rossa in fondo
              offset: Offset(0.0,  RicalcoloHeight(766.0, context)),
              child:
              // Adobe XD layer: 'red' (shape)
              Container(
                width: RicalcoloWidth(375.0, context),
                height: RicalcoloHeight(91.0, context),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35.0),
                  color: const Color(0xffe00a17),
                ),
              ),
            ),



            Container(// bottoni fondo
        margin:  EdgeInsets.only(left:RicalcoloWidth(1.0, context),top:RicalcoloHeight(729.0, context)),
        child:BottoniControllo(),
      ),

      Container(
        margin:  EdgeInsets.only(left:RicalcoloWidth(1.0, context),top:RicalcoloHeight(635.0, context)),
        child: BottoniSup(),
      ),


            Container( //Container chat
              margin:  EdgeInsets.only(left:RicalcoloWidth(20.0, context),top:RicalcoloHeight(500.0, context)),
              height: 200,
              child: ChatList("aleP"), //Per La chat
            ),
            /*  ElevatedButton(onPressed: (){
            controller.addMessage();
          }, ),*/
          ],
        ),
      ),
    );

  }
  Widget BottoniControllo(){ //ci sono i bottoni della barra in fondo
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
      Container(
        width: RicalcoloWidth(69.0, context),
        height: RicalcoloHeight(64.0, context),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage("assets/image/videocameraBORDO.png"),
            fit: BoxFit.fill,
          ),
        ),
      ),

    Container( //bottone chiusura chiamata
    width: RicalcoloWidth(69.0, context),
    height: RicalcoloHeight(64.0, context),
    decoration: BoxDecoration(
    image: DecorationImage(
    image: const AssetImage("assets/image/attaccaBORDO.png"),
    fit: BoxFit.fill,
    ),
    ),
child:TextButton(
  onPressed: (){
    _onCallEnd(context);
  },
),
    ),


            Container(
              width: RicalcoloWidth(69.0, context),
              height: RicalcoloHeight(64.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/image/microfonoBORDO.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),

    ],

    );
  }

  Widget BottoniSup(){ //lancia offerta riepilogo offerte e gira telecamera
    return Row(
      children: <Widget>[
        Container( //bottone riepilogo ordini
          margin:  EdgeInsets.only(left:RicalcoloWidth(22.0, context),top:0),
          width: RicalcoloWidth(57.0, context),
          height: RicalcoloHeight(57.0, context),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage("assets/image/acquistiBORDO.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),




           Container( // bottone per girare la camera
            margin:  EdgeInsets.only(left:RicalcoloWidth(226.0, context),top:0),
            width:RicalcoloWidth(39.0, context),
            height: RicalcoloHeight(39.0, context),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11.0),
              color: const Color(0xffffffff),
              border: Border.all(
                  width: RicalcoloWidth(1.0, context), color: const Color(0xff0e1116)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                  blurRadius: 6,
                ),
              ],
            ),
            child:TextButton( // bottone per girare la camera
              onPressed: (){
                _onSwitchCamera();
              },
              child:Container(

              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/image/cameraGIRA.png"),
                  fit: BoxFit.fill,
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
         ),


      ],
    );
  }

  Widget AziendaChiamante(){
    return Row(
      children: [
        Container(
          width: RicalcoloWidth(24.0, context),
          height: RicalcoloHeight(24.0, context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: const AssetImage("assets/image/fedez.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
    Text(
      'Federico Lucia',
      style: TextStyle(
        fontFamily: 'MADE TOMMY',
        fontSize: RicalcoloWidth(18.0, context),
        color: const Color(0xff0e1116),
        fontWeight: FontWeight.w700,
      ),
      textAlign: TextAlign.left,
    ),
      ],
    );
  }

  Widget BarraChat(){
    return   Container(
    width: RicalcoloWidth(375.0, context),
    height: RicalcoloHeight(186.0, context),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(23.0),
    color: const Color(0x710e1116),
    boxShadow: [
    BoxShadow(
    color: const Color(0x12000000),
    offset: Offset(0.0,  RicalcoloHeight(-10.0, context)),
    blurRadius: 6,
    ),
    ],
    ),
    child:Row(
        children:<Widget>[

          Container(
      margin:  EdgeInsets.only(left:RicalcoloWidth(41.0, context),top:RicalcoloHeight(37.0, context),
         bottom:RicalcoloHeight(90.0, context)),
      width: RicalcoloWidth(272.0, context),
      height: RicalcoloHeight(28.0, context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9.0),
        color: const Color(0x91ffffff),
        boxShadow: [
          BoxShadow(
            color: const Color(0x17000000),
            offset: Offset(0.0, RicalcoloHeight(3.0, context)),
            blurRadius: 6,
          ),
        ],
      ),

    child:Container(
          width: RicalcoloWidth(240.0, context),
      margin:  EdgeInsets.only(left:RicalcoloWidth(13.0, context),top:RicalcoloHeight(1.0, context)),
    child:TextFormField(
          controller: controllerMessageChat,
      onTap:(){ClearText(controllerMessageChat);},
          style: TextStyle(
            fontFamily: 'MADE TOMMY',
            fontSize: RicalcoloWidth(11.0, context),
            color: const Color(0xffffffff),
            fontWeight: FontWeight.w600,
          ),
      decoration: InputDecoration(
        border: InputBorder.none,
      ),
          textAlign: TextAlign.left,
        ),
      ),
          ),


    Container(
      margin:  EdgeInsets.only(top:RicalcoloHeight(35.0, context),bottom:RicalcoloHeight(88.0, context)),
    width: RicalcoloWidth(35.0, context),
    height: RicalcoloHeight(35.0, context),
    decoration: BoxDecoration(
    image: DecorationImage(
    image: const AssetImage("assets/image/invioRED.png"),
    fit: BoxFit.fill,
    ),
    ),
    
    child:TextButton(
      onPressed: (){
        controller.addMessage(controllerMessageChat.text,"okok");
      },
    ),
    ),
    ],
    ),

    );
  }

  Prova(){

  }





  }
