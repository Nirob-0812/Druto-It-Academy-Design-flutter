import 'dart:ui';

import 'package:drutoit/Modals/VideoModal.dart';
import 'package:drutoit/Screens/SecondPage/ShowVideo.dart';
import 'package:drutoit/Widgets/OnHovarMethod.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Expand_Item extends StatefulWidget {
  @override
  State<Expand_Item> createState() => _Expand_ItemState();
}

class _Expand_ItemState extends State<Expand_Item> {
bool _expand=false;
  @override
  Widget build(BuildContext context) {
    final _videolist=Provider.of<Videos>(context);
    return Padding(
      padding: const EdgeInsets.only(left: 80,top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Course content",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          SizedBox(height: 30,),
          Container(
            width: 700,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("1 Section, 4 Lectures, 9 min 8 seconds total length",),
              OnHovarMethod(builder: (bool hoverProperty) {
                final color=hoverProperty?Colors.deepOrange:null;
                final bold=hoverProperty?FontWeight.bold:null;
                return InkWell(
                    onTap: (){
                      setState(() {
                        _expand=!_expand;
                      });
                    },
                    child: Text("Expand all sections",style: TextStyle(color: color,fontWeight: bold),));
              },)
            ],),
          ),
          SizedBox(height: 5,),
          Container(
            height: 400,
            width: 700,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black38)
            ),
            child: Column(
              children: [
                 ListTile(
                   leading: IconButton(onPressed: (){
                     setState(() {
                         _expand=!_expand;
                     });
                   }, icon: Icon(Icons.expand_less),),
                   title: Text("Up and running with flutter",
                     style: TextStyle(fontWeight: FontWeight.bold),),
                   trailing: Text("2 Lecture, 4 min"),
                 ),
                Divider(height: 0.8,color: Colors.black87,),
                if(_expand)
                  Container(
                    height: _videolist.videosdata.length*48,
                  color: Colors.grey.shade100,
                  child: ListView.builder(itemCount: _videolist.videosdata.length,
                      itemBuilder: (contex,index){
                    return ListTile(
                      leading: Icon(Icons.play_arrow,color: Colors.black,),
                      title:  Text(_videolist.videosdata[index].title),
                      trailing: Container(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                    OnHovarMethod(builder: (bool hoverProperty) {
                        final bold=hoverProperty?FontWeight.bold:null;
                        return InkWell(
                          onTap: (){
                            showDialog(context: context, builder: (context){
                              return ShowVideo(videoindex: index, video: _videolist.videosdata[index].video);
                            });
                          },
                          child: Text("preview",
                            style: TextStyle(color: Colors.indigo.shade900,fontWeight: bold,
                                decoration: TextDecoration.underline),),
                        );},),
                            Text(_videolist.videosdata[index].duration.toString()),
                          ],
                        ),
                      ),
                    );
                  })
                  )
              ],
            ),
          ),
          SizedBox(height: 30,),
          Text("Requirements",style: TextStyle(fontSize: 25,
            color: Colors.black87,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Text("*  Macintosh (OSX)/ Windows(Vista and higher) Machine"),
          SizedBox(height: 5,),
          Text("*  Internet Connection"),
        ],
      ),
    );
  }

}
