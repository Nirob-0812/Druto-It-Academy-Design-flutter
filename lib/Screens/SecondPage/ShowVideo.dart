import 'dart:html';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
class ShowVideo extends StatefulWidget {
  @override
  State<ShowVideo> createState() => _ShowVideoState();
}

class _ShowVideoState extends State<ShowVideo> {
  List video=[
    "assets/videos/bee.mp4",
    "assets/videos/vocal.mp4",
    "assets/videos/bee.mp4",
    "assets/videos/vocal.mp4",
    "assets/videos/bee.mp4",
    "assets/videos/vocal.mp4",
  ];
  late final VideoPlayerController _controller;
  bool _playVideo=false;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 1000,
        width: 600,
        color: Colors.grey.shade300,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Course Preview",style: TextStyle(color: Colors.grey),),
                SizedBox(height: 10,),
                Text("The Complete Dart Programming Course",
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                SizedBox(height: 20,),
                _playVideo ? viewVideo(context): Text("fdkfjk"),
                Text("Free Sample Video",
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                Container(
                  height: 1000,
                  width: 600,
                  child: ListView.builder(
                      itemCount: video.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: (){
                            print(index.toString());
                            _ontapVideo(index);
                            setState(() {
                              if(_playVideo==false)
                                _playVideo=true;
                            });
                          },
                          child: ListTile(
                            leading: Image.asset("assets/images/dart.png",height: 50,width: 50,),
                            title: Text("Installing Dart"),
                            trailing: Text(index.toString()),
                          ),
                        );
                      }),
                ),
                Text("dkfjdkjfkdjf")
              ],
            ),
          ),
        ),
      ),
    );
  }
  _ontapVideo(int indx){
    _controller=VideoPlayerController.asset(video[indx]);
    setState(() {
    });
    _controller..initialize().then((_){
       setState(() {
         _controller.play();
       });
    });
  }
  Widget viewVideo(BuildContext context){
    if(_controller.value.isInitialized)
      {
        return AspectRatio(aspectRatio: 16/9,
          child: VideoPlayer(_controller),);
      }
    else return CircularProgressIndicator();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
}
