import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ibmcalculater/BMI_Screen.dart';

class BMI_Calculater extends StatefulWidget {
  const BMI_Calculater({Key? key}) : super(key: key);

  @override
  State<BMI_Calculater> createState() => _BMI_CalculaterState();
}

class _BMI_CalculaterState extends State<BMI_Calculater> {
  bool isMAle = true;
  bool HIGHT = true ;
  double height = 120;
  int weight = 40 ;
  int age = 15 ;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(child: Text("BMI Calculater" ,style: TextStyle(fontSize: 23,),)),
        ),
        body: Container(
          color: Colors.lightBlueAccent,
          child: Column(
            children: [
              //part1
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
                          onTap:()
                          {
                            setState(() {
                              isMAle = true;

                            });

                          },
                          child: Container(


                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              Image(image: AssetImage("images/download.png"),
                              height: 90,
                                width: 90,
                              ),
                              //وظيقة السايز بوكس هي الفاصل فيما بينهم
                              SizedBox(height: 15,),
                              Text("MALE",style: TextStyle(fontSize: 24),)

                            ],),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: isMAle ? Colors.white : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isMAle = false;

                            });
                          },

                          child: Container(

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              Image(image: AssetImage("images/download (1).png"),
                              height: 90,
                              width: 90,),
                              //وظيقة السايز بوكس هي الفاصل فيما بينهم
                              SizedBox(height: 15,),
                              Text("FEMALE",style: TextStyle(fontSize: 24),)

                            ],),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: isMAle ? Colors.grey : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),

              //part 2
              Expanded(

                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,

                  ),
                  child: Container(

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                      Text("HIGHT",style: TextStyle(fontSize: 24 ,fontWeight: FontWeight.bold

                      ),),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("${height.round()}" ,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                          SizedBox(width: 20,),
                          Text("CM" ,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                        ],
                      ),
                      Slider(value: height,
                          max: 220,
                          min: 80,
                          onChanged: (value){
                        setState(() {
                          height = value;
                        });
                        //print(value.round());
                      }),

                    ],),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:Colors.grey[400],
                    ),
                  ),
                )
              ),
              //part3
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("AGE" ,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                              ,Text("$age" ,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  FloatingActionButton(

                                    onPressed: (){
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    mini: true,
                                  child: Icon(Icons.remove),


                                  ),
                                  FloatingActionButton(
                                    onPressed: (){setState(() {
                                      age++;
                                    });},

                                    mini: true,
                                  child: Icon(Icons.add),


                                  ),

                                ],
                              )
                            ],
                          ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:Colors.grey[400],
                        ),

                        ),
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("weight" ,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                              ,Text("$weight" ,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        weight--;
                                      });

                                    },
                                    mini: true,
                                    child: Icon(Icons.remove),


                                  ),
                                  FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        weight++;

                                      });
                                    },
                                    mini: true,
                                    child: Icon(Icons.add),


                                  ),

                                ],
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:Colors.grey[400],
                          ),

                        ),
                      ),


                    ],
                  ),
                ),
              ),
              //part4
              Container(
                width: double.infinity,
                color: Colors.blue,
                child: MaterialButton(
                  onPressed: () {
                   double result = weight / pow(height / 100, 2);
                    print(result.round());
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BMI_Screen(
                        age: age,
                        isMale: isMAle,
                        result: result,
                      ),

                    ),
                    );
                  },
                  height: 50,
                  child: Text(
                    "CALCULATE",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ));

  }

}
