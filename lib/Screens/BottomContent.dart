import 'package:drutoit/Widgets/BottomListView.dart';
import 'package:drutoit/Widgets/OnHovarMethod.dart';
import 'package:flutter/material.dart';
class BottomContent extends StatelessWidget {
  List Firstrow=[
    "Druto-It Academy Business",
    "Tech on Druto-It",
    "Get the pp",
    "About us",
    "Contact us",
  ];
  List Secondrow=[
    "Careers",
    "Blog",
    "Help and Support",
    "Affiliate",
    "Investors"
  ];
  List Thirdrow=[
    "Terms",
    "Privacy policy",
    "Cookie settings",
    "Sitemap",
    "Accessibility Statement",
  ];
  List<Widget> bottomview(double width) {
    return <Widget>[
      BottomListView(Firstrow, width),
      BottomListView(Secondrow, width),
      BottomListView(Thirdrow, width),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder:(context, constraints) {
      if(constraints.maxWidth>900)
        return Row(
          children: bottomview(constraints.biggest.width/3),
        );
      else return Column(
        children: bottomview(constraints.biggest.width),
      );
     },
    );
  }
}
