import 'package:final_app/inputpage.dart';
import 'package:final_app/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fancy_drawer/fancy_drawer.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
  with SingleTickerProviderStateMixin {
  FancyDrawerController _controller;
  int _currentIndex = 0;
  double iconSize = 40;
  @override
  void initState(){
    super.initState();
    _controller = FancyDrawerController(
        vsync: this, duration: Duration(milliseconds: 300))
    ..addListener(() {
      setState(() {

      });
    });
  }
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
  @override

  Widget build(BuildContext context) {
    return Material(

      child: FancyDrawerWrapper(
        backgroundColor: Colors.cyanAccent,
        controller: _controller,
          drawerItems: <Widget>[
            FlatButton(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              highlightColor: Colors.yellowAccent,
            onPressed: () {
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) => LoginPage(),
          ));
        },

            child: Text('Login',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
  ),
            ),
            RaisedButton(
              //elevation: 10.0,
              color: Colors.black,
              //shape: RoundedRectangleBorder(
                //borderRadius: BorderRadius.all(Radius.circular(30)),
              //),
              //highlightColor: Colors.pink,

              //disabledTextColor: Colors.black,
              //disabledColor: Colors.grey,
              padding: EdgeInsets.all(0.0),
              child: Container(
                child: Text('BMI Calculator',
                style: TextStyle(
                  fontSize: 15,
                ),
                ),
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(22.0),
                    topLeft: Radius.circular(220.0),
                    bottomRight: Radius.circular(200.0),
                  )
                ),

              ),
              onPressed:() {

                Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => Inputpage(),
                ));
              },

            ),

          ],
        child: Scaffold(
          backgroundColor: Colors.greenAccent,
          appBar: AppBar(

            elevation: 4.0,
            title: Text("hello everyone.",
            style: TextStyle(
              color: Colors.cyanAccent,
            ),
            ),
            backgroundColor: Colors.cyan,
            leading: IconButton(
              icon: Icon(Icons.menu,
              color: Colors.black,
              ),
              onPressed: (){
                _controller.toggle();
              },
            ),
          ),

          body: Padding(
            
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
            child: Center(
              
                child: Column(children: <Widget>[
                  Text("Example of Table",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Table(
                      border: TableBorder.all(),
                      children: [
                        TableRow( children: [
                          Column(children:[
                            Icon(Icons.account_box, size: iconSize,),
                            Text('My Account')
                          ]),
                          Column(children:[
                            Icon(Icons.settings, size: iconSize,),
                            Text('Settings')
                          ]),
                          Column(children:[
                            Icon(Icons.lightbulb_outline, size: iconSize,),
                            Text('Ideas')
                          ]),
                        ]),
                        TableRow( children: [
                          Icon(Icons.cake, size: iconSize,),
                          Icon(Icons.voice_chat, size: iconSize,),
                          Icon(Icons.add_location, size: iconSize,),
                        ]),
                      ],
                    ),
                  ),
                ]
                )
            ),
          ),

            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _currentIndex,
              //type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Home'),
                  backgroundColor: Colors.blue
                ),

                BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    title: Text('Search'),
                    backgroundColor: Colors.amber
                ),

                BottomNavigationBarItem(
                    icon: Icon(Icons.call),
                    title: Text('Call'),
                    backgroundColor: Colors.redAccent
                ),
              ],
              onTap: (index) {
                setState(() {
                _currentIndex = index;
                });
              },
            ),
        ),
      ),
    );
  }
}
