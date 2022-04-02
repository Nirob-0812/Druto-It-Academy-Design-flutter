import 'package:drutoit/Modals/DataModal.dart';
import 'package:flutter/material.dart';

class Videos with ChangeNotifier{

  List<Data> videosdata=[
    Data(video: "assets/videos/bee.mp4", title: "Dart", duration: 0.4),
    Data(video: "assets/videos/vocal.mp4", title: "flutter", duration: 2.19),
    Data(video: "assets/videos/bee.mp4", title: "Dart", duration: 0.4),
    Data(video: "assets/videos/vocal.mp4", title: "flutter", duration: 2.19),
  ];
  List<Data> get video => videosdata;
  // void tapped(bool playVideo)
  // {
  //   playVideo=true;
  //   notifyListeners();
  // }
  // @override
  // void notifyListeners() {
  //   // TODO: implement notifyListeners
  //   super.notifyListeners();
  // }
}
