import 'package:final_app/firebase.dart';
import 'package:final_app/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey <FormState> _rformkey = GlobalKey <FormState> ();
  String  _rpassword, _remail;
  Future<void>SignIn() async{
    final rformState = _rformkey.currentState;
    if(rformState.validate()){
      rformState.save();
      FirebaseUser newuser = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _remail, password: _rpassword);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Firebase()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,),


        ),
      ),
      body: Form(
        key: _rformkey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("Sign up",
                    style: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),),
                  SizedBox(height: 10,),
                  Text("Create an account, It's free ",
                    style: TextStyle(
                        fontSize: 15,
                        color:Colors.redAccent[700]),)
                ],
              ),
              Column(
                children: <Widget>[

                    // TextFormField(
                    //   decoration: InputDecoration(
                    //     labelText : "Username",
                    //   ),
                    //   onSaved: (input) => _user = input,
                    //   validator: (input) {
                    //     if(input.isEmpty){
                    //       return "Please write your username!";
                    //     }
                    //     return null;
                    //   },
                    //
                    // ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText : "Email",
                    ),
                    onSaved: (input) => _remail = input,
                    validator: (input) {
                      if(input.isEmpty){
                        return "The mail field is empty";
                      }
                      return null;
                    },

                  ),
                  TextFormField(
                    decoration: InputDecoration(

                      labelText : "Password",
                    ),
                    obscureText: true,
                    onSaved: (input) => _rpassword = input,
                    validator: (input) {
                      if(input.length<=6){
                        return "Password is too short";
                      }
                      return null;
                    },

                  ),
                  //inputFile(label: "Confirm Password ", obscureText: true),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 3, left: 3),
                decoration:
                BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                    )

                ),
                child: FlatButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    SignIn();
                  },
                  color: Color(0xff0095FF),
                  //elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),

                  ),
                  child: Text(
                    "Sign up", style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.white,

                  ),

                  ),

                ),



              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => LoginPage(),
                    ));

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Already have an account?"),
                      Text(" Login", style:TextStyle(
                        color: Colors.cyanAccent,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,

                      ),
                      ),
                    ],
                  )
              )
            ],
          ),
        ),

    ),
    );
  }
}



Widget inputFile({label, obscureText = false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color:Colors.black87
        ),

      ),
      SizedBox(height: 5,),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0,
                horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.grey[400]
              ),

            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400])
            )
        ),
      ),
      SizedBox(height: 10,)
    ],
  );
}