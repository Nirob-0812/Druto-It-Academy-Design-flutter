import 'package:flutter/material.dart';

class Data with ChangeNotifier {

  final String video;
  final String title;
  final double duration;
  late final bool istapped;
  Data({
    required this.video,
    required this.title,
    required this.duration,
    this.istapped=false,
  });

}