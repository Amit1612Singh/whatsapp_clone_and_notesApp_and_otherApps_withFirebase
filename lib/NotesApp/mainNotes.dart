import 'dart:math';

import 'package:amit/NotesApp/AddNotes.dart';
import 'package:amit/NotesApp/EditNotes.dart';
import 'package:amit/NotesApp/ReaderScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import'package:flutter/material.dart';
import 'package:amit/NotesApp/DatabaseServices.dart';

class mainNotes extends StatelessWidget {
   mainNotes({Key? key}) : super(key: key);
   List colors=[
     Colors.yellow.shade100,
     Colors.blue.shade100,
     Colors.green.shade100,
     Colors.pink.shade100,
     Colors.orange.shade100,
     Colors.red.shade100,
   ];
  //  String? cv;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context,MaterialPageRoute(builder:(context)=>AddNotes()));
      },
      child:Icon(Icons.add)),
      appBar:AppBar(
        leading: Icon(Icons.arrow_back,color:Colors.black),
        backgroundColor: Colors.white,
        title: Text("Your recent Notes",style: TextStyle(color: Colors.black),),
      ),
      body:StreamBuilder(
        stream: firebaseFirestore.collection("notes").snapshots(),
        builder:(context,AsyncSnapshot<QuerySnapshot>snapshots) {
          if (snapshots.hasData){
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: snapshots.hasData ? snapshots.data!.docs.length:0,
              itemBuilder: (_, index) {
                int color_id=Random().nextInt(5);
                return InkWell(
                  onTap: (){
                  //  var doc;
                    Navigator.push(context,
                        MaterialPageRoute(builder:(context)=>
                            readerScreen(snapshots.data!.docs[index],color_id)));
                           // EditNote(docToEdit: snapshots.data!.docs[index],)));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    height: 150,
                    decoration: BoxDecoration(
                     // color:colors[Random().nextInt(5)],
                      color:colors[color_id],
                      borderRadius: BorderRadius.circular(8),
                    ),

                    child:Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start  ,
                        children: [
                          Text(snapshots.data!.docs[index].get('title'),
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                          SizedBox(height: 15,),
                          Text(snapshots.data!.docs[index].get('detail')??""),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
          else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }

        }
      ),
    );
  }
}
