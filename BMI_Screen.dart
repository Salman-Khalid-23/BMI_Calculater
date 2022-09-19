// ignore: camel_case_types
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMI_Screen extends StatelessWidget
{

  final double result ;
  final  bool isMale;
  final int age ;
  BMI_Screen({
   required this.result,
   required this.isMale,
   required this.age,
});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI Result ",style:TextStyle(fontSize: 24),)),

      ),
      body: Container(
        color: Colors.grey,
        child: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("If you chose Male will be out true , but if you chose Male out falls",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54
                ),),

              SizedBox(height: 60,),
              Text("Grander:$isMale ",


              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),),
              SizedBox(height: 30,),
              Text("Result is : $result ",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              SizedBox(height: 30,),
              Text("AGE : $age ",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),

            ],
          ),
        ),
      ),

    );
  }
}
