import 'dart:html';

import 'package:flutter/material.dart';

class OnHovarMethod extends StatefulWidget {
  final Widget Function(bool hoverProperty) builder;

  const OnHovarMethod({Key? key, required this.builder}) : super(key: key);

  @override
  State<OnHovarMethod> createState() => _OnHovarMethodState();
}

class _OnHovarMethodState extends State<OnHovarMethod> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => Enter(true),
      onExit: (event) =>Enter(false),
      child: widget.builder(isHovered),
    );
  }

  Enter(bool chek) {
    setState(()=>this.isHovered=chek);
  }
}
