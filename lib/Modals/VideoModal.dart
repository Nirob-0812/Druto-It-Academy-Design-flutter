import 'package:drutoit/Modals/DataModal.dart';
import 'package:flutter/material.dart';

class videos with ChangeNotifier{

  List<Data> videosdata=[
    Data(video: "assets/videos/bee.mp4", title: "Dart"),
    Data(video: "assets/videos/vocal.mp4", title: "flutter"),
    Data(video: "assets/videos/bee.mp4", title: "Dart"),
    Data(video: "assets/videos/vocal.mp4", title: "flutter"),
  ];
  List<Data> get video => videosdata;
  // @override
  // // void notifyListeners() {
  // //   // TODO: implement notifyListeners
  // //   super.notifyListeners();
  // // }
}