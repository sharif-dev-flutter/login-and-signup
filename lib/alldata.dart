
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AllData extends StatefulWidget {
  @override
  _AllDataState createState() => _AllDataState();
}

class _AllDataState extends State<AllData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("all data"),
      ),

      body: StreamBuilder(
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

    );
  }
}
