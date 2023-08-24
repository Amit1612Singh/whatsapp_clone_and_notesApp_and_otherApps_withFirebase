import 'dart:math';

import 'package:amit/NotesApp/EditNotes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import'package:flutter/material.dart';
import 'mainNotes.dart';
import 'package:amit/NotesApp/DatabaseServices.dart';


class readerScreen extends StatefulWidget {
  readerScreen(this.doc,this.color_id );
QueryDocumentSnapshot doc;
int color_id;
  //final Map data;
// final DocumentReference data;
  @override
  State<readerScreen> createState() => _readerScreenState();
}

class _readerScreenState extends State<readerScreen> {
  //String ?title;
  List colors=[
    Colors.yellow.shade100,
    Colors.blue.shade100,
    Colors.green.shade100,
    Colors.pink.shade100,
    Colors.orange.shade100,
    Colors.red.shade100,
  ];

  //  String? des;
//  bool edit=false;
  GlobalKey<FormState> key=GlobalKey<FormState>();
  @override

  Widget build(BuildContext context) {

    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(onPressed: (){
      Navigator.push(context,MaterialPageRoute(builder:(context){

          return EditNote(widget.doc);}));
    },
            label:Text("Edit Note"),
            icon: Icon(Icons.edit)),

      backgroundColor:colors[widget.color_id],
      body:Column(
        
        children: [
       Container(alignment: Alignment.center,
           padding: EdgeInsets.all(20),
           margin: EdgeInsets.all(20),
           child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: Text(widget.doc['title'],
                 style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
           ),
           SizedBox(height: 15,),
      //  widget.doc[' Created at'],
         //  SizedBox(height: 15,),
           Text(widget.doc['detail'],
               style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
         ],

       )),

        ],
      ),
    );
  }
}
