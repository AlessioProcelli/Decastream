import 'dart:async';
import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:agora_rtc_engine/rtc_local_view.dart' as RtcLocalView;
import 'package:agora_rtc_engine/rtc_remote_view.dart' as RtcRemoteView;
import 'package:everstream/Widget/ChatLista.dart';
import 'package:everstream/Pop_Up/PopupUtente.dart';
import 'package:everstream/Tipi/Utente.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Metodi/Ridimensiona.dart';
import '../../../main.dart';
import 'settings.dart';
import '../../Pop_Up/Pop_Up_Offerte/PopupOffertaLancio.dart';
import '../../Tipi/Azienda.dart';

class Call extends StatefulWidget {
  /// non-modifiable channel name of the page
  final String channelName;
  final Utente user;
  Azienda azienda;
  LancioOfferta popup;
  PopupUtente popupUtente;

  /// non-modifiable client role of the page
  final ClientRole role=ClientRole.Broadcaster;

  /// Creates a call page with given channel name.
 Call({Key key, this.channelName,this.user,this.azienda}) : super(key: key);

  @override
  CallPageState createState() => CallPageState();
}

class CallPageState extends State<Call> {
  final List<String> messagelist=[];
  final _users = <int>[];
 final _infoStrings = <String>[];
  bool muted = false;
  RtcEngine _engine;
  bool thereisofferta=false;
  BuildContext this_context;
  double lunghezzaFinestra;
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

  void _onCallEnd(BuildContext context) {
    Navigator.pop(context);
    final views = _getRenderViews();

    if(views.length<2){
      if(controller.database.isAzienda) {
        controller.database.RemoveChat("Chat"+controller.database.currentAzienda.username);
      }
      else{
        controller.database.RemoveChat("Chat"+widget.azienda.username);
      }
    }
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
    this_context=context;
    widget.popup=LancioOfferta(this);
    widget.popupUtente=PopupUtente(this);
    controller.database.currentcontext=context;
    lunghezzaFinestra=RicalcoloHeight(660.0, context);
    if(controller.database.isAzienda){
      /// salva azienda  corrente
      widget.azienda=controller.database.currentAzienda;
    }

    return SafeArea(
        child:Scaffold(
      backgroundColor: Colors.white,
      body:Stack(
        children:[Column(
            mainAxisSize: MainAxisSize.max,
          children: <Widget>[

            /// contiene la finestra di live

            Container(
              height:RicalcoloHeight(lunghezzaFinestra, context),
              child:Stack(
                  children: <Widget>[

                    //finestra di live
              _viewRows(),

                    // i pop up
                    controller.database.isAzienda ?
                        //pop up azienda
                    thereisofferta ? widget.popup : Container()
                    // pop up utente
                    : controller.database.thereisOfferta ? widget.popupUtente : Container(),

                    ///Contiene Profilo Chaiamante
                    Container( //Contiene Profilo Chaiamante
                      margin:  EdgeInsets.only(left:RicalcoloWidth(10.0, context),top:RicalcoloHeight(24.0, context)),
                      child: controller.database.isAzienda? UtenteChiamante():AziendaChiamante() ,
                    ),

                    ///Container chat
                   Align(
                     alignment: Alignment.bottomCenter,
                   child: Container(
                        height: RicalcoloHeight(180.0, context),
                        child:ChatList (widget.azienda.username) //Per La chat
                    ),
                   ),
              ])

            ),



            Container(// Bottoni cambio camera ecc
              margin: EdgeInsets.only(left: RicalcoloWidth(1.0, context),
                  top: RicalcoloHeight(1.0, context)),
              child: BottoniSup(context),
            ),








  ],


          

        ),
          ///Bottoni in fondo
          Align(
            alignment: Alignment.bottomCenter,
            child:
            Container( //Bottoni di controllo
              height: RicalcoloHeight(70, context),
              child: BottoniControllo(context),
            ),
          ),


        ])
      ),


    );

  }
  ///Bottoni in fondo
  Widget BottoniControllo(BuildContext context) {
    //ci sono i bottoni della barra in fondo
    return Stack(children: [
      Align(
        alignment: Alignment.bottomCenter,
    child:Container(
        margin: EdgeInsets.only(top: RicalcoloHeight(25.0, context)),
        width: RicalcoloWidth(360.0, context),
        height: RicalcoloHeight(51.0, context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(35), topLeft: Radius.circular(35)),
          color: const Color(0xffe00a17),
        ),
      ),
      ),
      Container(
          margin: EdgeInsets.only(bottom: RicalcoloHeight(10.0, context)),
          height: RicalcoloHeight(61.0, context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1 / 1,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          const AssetImage("assets/image/videocameraBORDO.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              AspectRatio(
                aspectRatio: 1 / 1,
                child: Container(
                  //bottone chiusura chiamata
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage("assets/image/attaccaBORDO.png"),
                      fit: BoxFit.cover,
                    ),
                  ),

                  child: TextButton(
                    onPressed: () {
                      _onCallEnd(context);
                    },
                  ),
                ),
              ),
              AspectRatio(
                aspectRatio: 1 / 1,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: muted
                          ? AssetImage("assets/image/microfonoSpento.png")
                          : AssetImage("assets/image/microfonoBORDO.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      _onToggleMute();
                    },
                  ),
                ),
              ),
            ],
          )),
    ]);
  }

  Widget BottoniSup(BuildContext context){ //lancia offerta riepilogo offerte e gira telecamera
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

        controller.database.isAzienda ?
        Container(
    margin:  EdgeInsets.only(left:RicalcoloWidth(28, context),top:0),
            width:RicalcoloWidth(158.0, context),
    height:RicalcoloHeight(35.0, context),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              color: const Color(0xffe00a17),
              border: Border.all(
                  width: RicalcoloWidth(0.7, context), color: const Color(0xffe00a17)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x55000000),
                  offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                  blurRadius: 6,
                ),
              ],
            ),
          child:TextButton(

      onPressed: (){
        PreparaOfferta( context);
      },
      child:Text(
            'LANCIA OFFERTA!',
            style: TextStyle(
              fontFamily: 'MADE TOMMY',
              fontSize: RicalcoloWidth(16.0, context),
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          ),

    ) :BarraChat(),

          Container( // bottone per girare la camera
     margin: EdgeInsets.only(left:RicalcoloWidth(40.0, context),top:0),

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

  Widget UtenteChiamante(){
    return Row(
      children: [
        Container(
          width: RicalcoloWidth(24.0, context),
          height: RicalcoloHeight(24.0, context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: NetworkImage(widget.user.foto_profilo),
              fit: BoxFit.cover,
            ),
          ),
        ),
    Text(
      widget.user.nome + widget.user.cognome,
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
  Widget AziendaChiamante(){
    return Row(
      children: [
        Container(
          width: RicalcoloWidth(24.0, context),
          height: RicalcoloHeight(24.0, context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: NetworkImage(widget.azienda.img_profilo),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          widget.azienda.nome_azienda,
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

  Widget BarraChat() {
    return Container(
            width: RicalcoloWidth(200.0, context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9.0),
            color: const Color(0x17000000),
            boxShadow: [
              BoxShadow(
                color: const Color(0x17000000),
                offset: Offset(0.0, RicalcoloHeight(3.0, context)),
                blurRadius: 6,
              ),
            ],
          ),
          child:FittedBox(
    fit: BoxFit.scaleDown,
    child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: RicalcoloWidth(190.0, context),
            margin: EdgeInsets.only(
                left: RicalcoloWidth(13.0, context),
                top: RicalcoloHeight(1.0, context)),
            child: TextFormField(
              controller: controllerMessageChat,
              onTap: () {
                ClearText(controllerMessageChat);
              },
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
            ),),

         IconButton(
            icon: const Icon(Icons.arrow_upward),
            color: Colors.red,
            onPressed: () {
              controller.addMessage(
                  controllerMessageChat.text, widget.azienda.username);
            },
          ),

      ],
    )));
  }

  void LanciaOfferta() {
    controller.LanciaOfferta(
        widget.popup.parametri.controllerTitolo.text,
        widget.popup.parametri.controllerPrezzo.text,
        widget.popup.parametri.getMetodoDiSpedizione(),
    widget.user);
  }
  void OffertaChiusa(){
    thereisofferta=false;
    rebuildAllChildren(context);
  }
  void OffertaUtenteChiusa(){
    controller.database.thereisOfferta=false;
    rebuildAllChildren(this_context);
  }

void PreparaOfferta(BuildContext context){
  thereisofferta=true;
  rebuildAllChildren(context);

}




  }
