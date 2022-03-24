import 'package:drutoit/Data/DataModel.dart';
import 'package:drutoit/Pages/DetailsOfCourse.dart';
import 'package:flutter/material.dart';
class SecondList extends StatelessWidget {
  List<Courses> cousrse=[
    Courses("Flutter Framework","Mr. Habibur Rahman","assets/images/flutter.jpg","5 September 2021",25),
    Courses("Dart Programming Language","Mr. Habibur Rahman","assets/images/dart.png","2 October 2021",30)
  ];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth>700)
        return showMultipleCard(2);
      else return showMultipleCard(1);
    });
  }
  Widget showMultipleCard(int item)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
      child: Container(
          height: 350,
          width: double.infinity,
          child: ListView.builder(itemCount: item,scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                      onTap: (){Navigator.of(context).pushNamed(DetailsOfCourse.route);},
                      child: Container(
                        alignment: Alignment.center,
                        width: 300,
                        child: Card(
                          elevation: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(cousrse[index].image,height:170,width: 300,fit: BoxFit.fill,),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10,),
                                    Text(cousrse[index].title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                                    Text(cousrse[index].subtitle,style: TextStyle(fontSize: 16,color: Colors.grey.shade500),),
                                    SizedBox(height: 10,),
                                    ElevatedButton(onPressed: (){}, child: Text("Buy Course"),
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                          primary: Colors.deepOrange,
                                          fixedSize: Size(120, 35)
                                      ),
                                    ),
                                    SizedBox(height: 15,),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.calendar_month),
                                              Text("Start ${cousrse[index].date}",style: TextStyle(fontSize: 12),)
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.people),
                                              Text("${cousrse[index].seat} Seats",style: TextStyle(fontSize: 12))
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                  ),
                );
              }
          )
      ),
    );
  }
}
