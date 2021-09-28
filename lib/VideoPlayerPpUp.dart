import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'Ridimensiona.dart';




class VideoPlayerScreen extends StatelessWidget {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
  bool active=false;
  BuildContext context;

  void init() {
    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.asset(
      'assets/image/videoProva.mp4',
    );

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);

  }
  Widget build(BuildContext context) {

    this.context=context;
    return active? Container(
      width: MaxScreenWidht(context),
      height: MaxScreenHeight(context),
      color: Color(0x88000000),
      // Use a FutureBuilder to display a loading spinner while waiting for the
      // VideoPlayerController to finish initializing.
      child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget>[
            CloseButton(
              color:Color(0xffe00a17) ,
              onPressed: (){
                active=false;
                _controller.pause();
                _controller.initialize();
                rebuildAllChildren(context);
              },
            ),
            FutureBuilder(
              future: _initializeVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  // If the VideoPlayerController has finished initialization, use
                  // the data it provides to limit the aspect ratio of the video.
                  return AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    // Use the VideoPlayer widget to display the video.
                    child: VideoPlayer(_controller),
                  );
                } else {
                  // If the VideoPlayerController is still initializing, show a
                  // loading spinner.
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
            Container( margin:EdgeInsets.only(top:RicalcoloHeight(10.0, context)),),
            FloatingActionButton(
              backgroundColor:Color(0xffe00a17),
              onPressed: () {
                // Wrap the play or pause in a call to `setState`. This ensures the
                // correct icon is shown.

                  if (_controller.value.isPlaying) {
                    _controller.pause();
                  } else {
                    // If the video is paused, play it.
                    _controller.play();
                  }
                rebuildAllChildren(context);
              },
              // Display the correct icon depending on the state of the player.
              child: Icon(
                _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
              ),
            ),
          ]),// This trailing comma makes auto-formatting nicer for build methods.
    ):
    Container();
  }
 void ActivePopUp(){
    active=true;
    rebuildAllChildren(context);
 }


}

