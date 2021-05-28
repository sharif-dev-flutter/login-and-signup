
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Firebase extends StatefulWidget {
  @override
  _FirebaseState createState() => _FirebaseState();
}

class _FirebaseState extends State<Firebase> {
  String name, mobile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("firebase Auth!"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        verticalDirection: VerticalDirection.down,


        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "name",
              ),
              onChanged: (input)
              {
                name = input;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "mobile",
              ),
              onChanged: (input)
              {
                mobile = input;
              },
            ),
          ),
          SizedBox(height: 20,),
          FlatButton(
              onPressed: () {
                setState(() {
                  Firestore.instance.collection("User").add({
                    "Name": name,
                    "Mobile": mobile,
                  });
                });
              },
              child: Text("send Data"),
            color: Colors.redAccent,
            splashColor: Colors.amber,
          ),
          SizedBox(height: 30,),

          FlatButton(
            onPressed: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            child: Text("Log Out"),
            color: Colors.redAccent,
            splashColor: Colors.amber,
          ),

          Expanded(

            child: StreamBuilder(
              stream: Firestore.instance.collection("User").snapshots(),
              builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if(!snapshot.hasData){
                  return Text("No Value");
                }
                return ListView(
                  children: snapshot.data.documents.map((document){
                    return Column(
                      children: <Widget>[
                        Text(document['Name'] ?? ' '),
                        Text(document['Mobile'] ?? '  '),
                      ],
                    );
                  }).toList(),
                );
              },
            ),
          ),

          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 100.0),
          //   child: FlatButton(
          //     onPressed: () {
          //       setState(() {
          //       Navigator.pop(context);
          //       });
          //     },
          //     child: Text("Log Out"),
          //     color: Colors.redAccent,
          //     splashColor: Colors.amber,
          //   ),
          // ),
        ],

      ),

    );
  }
}




