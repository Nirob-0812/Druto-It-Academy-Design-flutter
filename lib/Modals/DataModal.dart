import 'package:flutter/material.dart';

class Data with ChangeNotifier {

  final String video;
  final String title;

  Data({
    required this.video,
    required this.title,
  });
}