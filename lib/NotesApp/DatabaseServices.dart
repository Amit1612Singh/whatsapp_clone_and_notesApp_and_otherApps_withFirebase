import 'package:amit/NotesApp/mainNotes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
   FirebaseFirestore firebaseFirestore=FirebaseFirestore.instance;


// Navigation(BuildContext context){
//   Navigator.push(context,
//       MaterialPageRoute(builder: (_)=>mainNotes()));


class DataBaseServices {

  static Future<void> addData(String title, String detail,BuildContext context) async {
   await firebaseFirestore.collection("notes").add(
        { " Created at":DateTime.now(),
          "title": title,
          "detail": detail,

        }).whenComplete( () => Navigator.pop(context));
    //     Navigator.push(context,
    // MaterialPageRoute(builder: (context)=>mainNotes())));

  }

  static Future<void> updateData( String title, String detail,DocumentSnapshot? snapshot,BuildContext context) async {
    await firebaseFirestore.collection("notes").doc(snapshot?.id).update( {"title": title, "detail": detail
        }).whenComplete( () =>Navigator.push(context,MaterialPageRoute(builder:(context)=>mainNotes())));



        //Navigator.pop(context));



  }
  static Future<void>deleteData(DocumentSnapshot? snapshot,BuildContext context) async {
    await firebaseFirestore.collection("notes").doc(snapshot?.id).delete()
    .whenComplete( () => Navigator.push(context,MaterialPageRoute(builder:(context)=>mainNotes())));

        //Navigator.pop(context));



  }
  // static Future<void>readData(DocumentSnapshot? snapshot,BuildContext context) async {
  //   await firebaseFirestore.collection("notes").doc(snapshot?.id);
  //      // .whenComplete( () => Navigator.pop(context));
  // }


}