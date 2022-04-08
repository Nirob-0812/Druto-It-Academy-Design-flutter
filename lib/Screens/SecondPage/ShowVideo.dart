import 'dart:html';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:drutoit/Modals/DataModal.dart';
import 'package:drutoit/Modals/VideoModal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

class ShowVideo extends StatefulWidget {
  final int videoindex;
  final String video;
  @override
  State<ShowVideo> createState() => _ShowVideoState();
   ShowVideo({required this.videoindex, required this.video});
}
class _ShowVideoState extends State<ShowVideo> {
  // late int _index;
  // late String _video;
  late bool _pressed=false;
  late int tapped=0;
  double volume=0.5;
  late VideoPlayerController _controller=VideoPlayerController.asset("assets/videos/natural.mp4");
  late Duration videoposition=_controller.value.position;
  late Duration videolength;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller..initialize().then((value) {
      setState(() {
        _controller.play();
      });
      _controller.addListener(() {setState(() {
        videoposition=_controller.value.position;
      });});
    });
  }
  @override
  Widget build(BuildContext context) {
    final itemData=Provider.of<Videos>(context);
    // _index=widget.videoindex;
    // _video=widget.video;
    //if(!_pressed)_ontapVideo(_video);
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
                //if(_pressed)
                Container(
                  height: 50,
                  width: 600,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(onPressed: (){
                            _ontapVideo(itemData.videosdata[tapped-1].video);
                            tapped-=1;
                          }, icon: Icon(Icons.skip_previous)),
                          IconButton(onPressed: (){
                            setState(() {
                              _controller.value.isPlaying?
                              _controller.pause():
                              _controller.play();
                            });
                          }, icon: Icon(_controller.value.isPlaying ? Icons.pause: Icons.play_arrow)),
                          IconButton(onPressed: (){
                             _ontapVideo(itemData.videosdata[tapped+1].video);
                             tapped++;
                          }, icon: Icon(Icons.skip_next)),
                          SizedBox(width: 10,),
                          Text("${Convert_duration(videoposition)} / ${Convert_duration(_controller.value.duration)}"),
                        ],
                      ),
                      Row(children: [
                        IconButton(icon: Icon(Volume_Icon(volume),size: 20,),
                          onPressed: () =>setState(() {
                          })
                        ),
                        Slider( min: 0,max: 1,
                            value: volume, onChanged: (Change_volume){
                              setState(() {
                                volume=Change_volume;
                                _controller.setVolume(Change_volume);
                              });
                            }),
                        IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.closedCaptioning,size: 20,)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.settings,size: 20,)),
                        IconButton(onPressed: (){
                          setState(() {
                          });
                        }, icon: Icon(FontAwesomeIcons.upRightAndDownLeftFromCenter,size: 17,)),

                      ],)
                    ],
                  ),
                ),
                Text("Free Sample Video",
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                SizedBox(height: 15,),
                Container(
                  height: 1000,
                  width: 600,
                  child: ListView.builder(
                      itemCount: itemData.videosdata.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(3),
                          child: Container(
                            color: tapped==index ? Colors.grey.shade400: null,
                            child: ListTile(
                              onTap: (){
                                _pressed=true;
                                tapped=index;
                                // print(index.toString());
                                _ontapVideo(itemData.videosdata[index].video);
                              },
                              title: tapped==index? Row(
                                children: [Icon(Icons.play_arrow),
                                  Text(itemData.videosdata[index].title),
                                ],
                              ): Text(itemData.videosdata[index].title),
                              leading: Image.asset("assets/images/dart.png",height: 50,width: 50,),
                              trailing: Text(itemData.videosdata[index].duration.toString()),
                            ),
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
  _ontapVideo(String video){
    _controller=VideoPlayerController.asset(video);
    _controller..initialize().then((_){
       setState(() {
         _controller.play();
       });
    });
    _controller..addListener(() =>setState(() {
      videoposition=_controller.value.position;
    }));
  }
  Widget viewVideo(BuildContext context){
    if(_controller.value.isInitialized)
      {
        return Column(
          children: [
            AspectRatio(aspectRatio: 16/9,
              child: VideoPlayer(_controller),),
            VideoProgressIndicator(_controller, allowScrubbing: true)
          ],
        );
      }
    else return AspectRatio(aspectRatio: 16/9,
    child: Center(child: CircularProgressIndicator()));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
String Convert_duration(Duration _duration){
  final minutes=_duration.inMinutes<10 ?
   "0${_duration.inMinutes}": _duration.inMinutes.toString();
  final modulosecnd= _duration.inSeconds%60;
  final seconds=modulosecnd <10? "0${modulosecnd}": modulosecnd.toString();
  return '$minutes:$seconds';
}
IconData Volume_Icon(double vol)
{
  if(vol==0)
  return Icons.volume_mute;
  else if(vol<0.5)
    return Icons.volume_down;
  else return Icons.volume_up;
}