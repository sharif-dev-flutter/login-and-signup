import 'package:final_app/calculation.dart';
import 'package:final_app/outputpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class Inputpage extends StatefulWidget {
  @override
  _InputpageState createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {


  int weight = 20;
  int age = 10;
  int height = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF103145),
      appBar: AppBar(
        backgroundColor: Color(0xFF103145),
        title: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text("Calculate Your BMI",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF296387),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 200,
                    width: 150,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.male,
                            size: 60,
                            color: Colors.white,
                          ),

                          SizedBox(height: 20,),

                          Text("Male",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF296387),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 200,
                    width: 150,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.female,
                            size: 60,
                            color: Colors.white,
                          ),

                          SizedBox(height: 20,),

                          Text("Female",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFF296387),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Text("Height",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 100, right: 100),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "height",
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),

            Row(
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF296387),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 200,
                    width: 150,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          Text("Weight",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25
                            ),
                          ),

                          Text(weight.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                  color: Color(0xFFa8b4bf),
                                  icon: Icon(FontAwesomeIcons.plus,
                                    color: Colors.white,
                                  ),
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  }
                              ),

                              SizedBox(width: 10,),

                              IconButton(

                                  icon: Icon(FontAwesomeIcons.minus,
                                    color: Colors.white,
                                  ),
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  }
                              ),

                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF296387),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 200,
                    width: 150,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Age",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25
                            ),
                          ),

                          Text(age.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                  color: Color(0xFFa8b4bf),
                                  icon: Icon(FontAwesomeIcons.plus,
                                    color: Colors.white,
                                  ),
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  }
                              ),

                              SizedBox(width: 10,),

                              IconButton(
                                  color: Color(0xFFa8b4bf),
                                  icon: Icon(FontAwesomeIcons.minus,
                                    color: Colors.white,
                                  ),
                                  onPressed: (){

                                    setState(() {
                                      age--;
                                    });
                                  }
                              ),

                            ],
                          ),


                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),

            Center(
              child: RaisedButton(
                elevation: 10.0,
                //shape: RoundedRectangleBorder(
                   // borderRadius: BorderRadius.all(Radius.circular(30))),
                splashColor: Colors.red,
                disabledTextColor: Colors.black,
                disabledColor: Colors.grey,
                highlightElevation: 20.0,
                color: Colors.black,
                padding: EdgeInsets.all(0.0),

                child: Container(child: Text("Calculate"),
                  padding: EdgeInsets.all(20.0),

                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                      Colors.red,
                        Colors.amber,
                      ]
                    ),
                  ),
                ),

                //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                onPressed: (){

                  Calculation cal = Calculation(height: height, weight: weight);

                  Navigator.push(context, MaterialPageRoute(builder: (context) =>
                      Outputpage(
                        bmiresult: cal.bmiresult(),
                        feedback: cal.feedback(),
                        suggestion: cal.suggestion(),
                      )
                  ));
                },




              ),
            ),


          ],
        ),
      ),

    );
  }
}
