import 'package:drutoit/Data/DataModel.dart';
import 'package:drutoit/Data/ShowList.dart';
import 'package:flutter/material.dart';

class FirstList extends StatelessWidget {
  List<item> data=[
    item("1500+ Topic","Learning Analysis", "assets/images/topic1.png",1),
    item("1800+ Students","Learning Analysis", "assets/images/student1.jpg",2),
    item("K+ Test Token","Learning Analysis", "assets/images/token.png",3),
    item("2000+ Student","Learning Analysis", "assets/images/images.jpg",4),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: double.infinity,
        child: ListView.builder(itemCount: data.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return  LayoutBuilder(builder: (context, constraints) {
                if(constraints.maxWidth>1000)
                  {
                    return dataList(data[index].title,data[index].subtitle,data[index].image, 60,50,300,200,100,120);
                  }
                else if(constraints.maxWidth>800)
                  return dataList(data[index].title,data[index].subtitle,data[index].image, 50,40,200,100,67,35);
                else return dataList(data[index].title,data[index].subtitle,data[index].image, 20,10,150,100,50,25);
              });
            })
    );
  }
}
