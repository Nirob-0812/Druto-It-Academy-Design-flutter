import 'dart:html';
import 'package:drutoit/Modals/VideoModal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';
class ShowVideo extends StatefulWidget {
  @override
  State<ShowVideo> createState() => _ShowVideoState();
}

class _ShowVideoState extends State<ShowVideo> {
  bool _playVideo=false;
  VideoPlayerController _controller=VideoPlayerController.asset("assets/videos/bee.mp4");
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller..initialize().then((_){
      setState(() {
        _controller.play();
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    final itemData=Provider.of<videos>(context);
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
                 viewVideo(context),
                Text("Free Sample Video",
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                Container(
                  height: 1000,
                  width: 600,
                  child: ListView.builder(
                      itemCount: itemData.videosdata.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: (){
                            print(index.toString());
                            _ontapVideo(index, itemData.videosdata[index].video);
                            // setState(() {
                            //   if(_playVideo==false)
                            //     _playVideo=true;
                            //   });
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
  _ontapVideo(int indx , String video){
    _controller=VideoPlayerController.asset(video);
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
    else return Center(child: CircularProgressIndicator());
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
