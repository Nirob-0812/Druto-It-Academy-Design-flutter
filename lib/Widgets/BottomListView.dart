import 'package:drutoit/Widgets/OnHovarMethod.dart';
import 'package:flutter/material.dart';
Widget BottomListView(List<dynamic> _list, double widthofRow){
  return Container(
    height: 240,
    width: widthofRow,
    child: ListView.builder(itemCount: _list.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (contex,index){
          return Padding(
            padding: const EdgeInsets.only(left: 20,top: 15),
            child: OnHovarMethod(builder:(hoverProperty) {
              final color=hoverProperty?Colors.deepOrange:Colors.white;
              final bold=hoverProperty?FontWeight.bold:null;
              final underline=hoverProperty?TextDecoration.underline:null;
              return Text(_list[index],style: TextStyle(color: color,fontSize: 18,
                  fontWeight: bold,decoration: underline),);
            }),
          );
        }),
  );

}