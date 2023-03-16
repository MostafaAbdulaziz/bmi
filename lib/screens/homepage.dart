import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int weight=50;
  int age=20;
  bool isMale=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          height: 180,
                          decoration: BoxDecoration(
                            color: isMale?Colors.blueAccent:Colors.black45,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Icon(Icons.male,size: 120,),
                              Text('Male',style: TextStyle(fontSize: 45),)

                            ],
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            isMale=true;
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 15,),
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          height: 180,
                          decoration: BoxDecoration(
                            color: !isMale?Colors.blueAccent:Colors.black45,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Icon(Icons.female,size: 120,),
                              Text('Female',style: TextStyle(fontSize: 45),)

                            ],
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            isMale=false;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              )
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('HEIGHR',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text('180',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                        Text('CM',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

                      ],),
                    const Slider(
                      value: 120,
                      onChanged:null,
                      min: 10,
                      max: 360,
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('WEIGHT',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                               Text("$weight",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 50,),
                                      child: Icon(
                                        Icons.minimize,size: 25 ,
                                      ),
                                    ),
                                    mini: true,
                                  ),
                                  FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 5,),
                                      child: Icon(
                                        Icons.add,size: 25 ,
                                      ),
                                    ),
                                    mini: true,
                                  ),
                                ],
                              )

                            ],
                          ),
                        ),
                        onTap: (){},
                      ),
                    ),
                    const SizedBox(width: 15,),
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('AGe',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                              Text('$age',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 50,),
                                      child: Icon(
                                        Icons.minimize,size: 25 ,
                                      ),
                                    ),
                                    mini: true,
                                  ),
                                  FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 5,),
                                      child: Icon(
                                        Icons.add,size: 25 ,
                                      ),
                                    ),
                                    mini: true,
                                  ),
                                ],
                              )

                            ],
                          ),
                        ),
                        onTap: (){},
                      ),
                    ),
                  ],
                ),
              )
          ),
          Container(
              width: double.infinity,
              child: MaterialButton(
                height: 50,
                onPressed: (){},
                color:Colors.blueAccent ,
                child: const Text('CALCULATE'),
              )
          )
        ],
      ),
    );
  }
}

