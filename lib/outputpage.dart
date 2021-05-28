import 'package:final_app/inputpage.dart';
import 'package:flutter/material.dart';


class Outputpage extends StatefulWidget {
  Outputpage({this.bmiresult, this.feedback, this.suggestion});

  String bmiresult;
  String feedback;
  String suggestion;
  @override
  _OutputpageState createState() => _OutputpageState();
}

class _OutputpageState extends State<Outputpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xFF103145),
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 70),
        child: Text("Check Your Result.",
          style: TextStyle(
            fontSize: 20,
            color: Colors.cyanAccent,
          ),
        ),
      ),
      ),
      body: Column(
        children: <Widget>[
          Padding(

            padding: const EdgeInsets.only(top: 40, left: 30),
            child: Text("Your Result",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 30,),

          Center(
            child: Column(
              children: <Widget>[

                Text(widget.feedback,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20,),

                Text(widget.bmiresult,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              SizedBox(height: 20,),
                Text(widget.suggestion,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 200,),

                Container(

                  child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                    color: Colors.black,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Inputpage()));
                    },
                    child: Text("Re-Calculate",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    splashColor: Colors.red,
                  ),
                ),

              ],
            ),
          ),

        ],
      ),

    );
  }
}
