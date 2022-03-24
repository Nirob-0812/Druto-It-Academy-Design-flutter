import 'package:flutter/material.dart';
class Conclution extends StatelessWidget {
  const Conclution({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      alignment: Alignment.center,
      child: Column(
        children: [
          Text("Testimonial",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 100,
                width: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/me.jpg"),
                  )
                ),
              ),
            ),
              SizedBox(width: 20,),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                    width: 300,
                    child: Text("We’ve got the solution: world-class training and development programs developed by top universities and companies. All on Coursera for Business.")),
              )
            ],
          )
        ],
      ),
    );
  }
}
