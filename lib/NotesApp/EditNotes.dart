
import 'package:amit/NotesApp/DatabaseServices.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import'package:flutter/material.dart';

class EditNote extends StatefulWidget {
  // EditNote({Key? key}) : super(key: key);

  DocumentSnapshot? docToEdit;
    EditNote( this.docToEdit);

  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  TextEditingController titleC = TextEditingController();
  TextEditingController detailC = TextEditingController();
  final FormKey=GlobalKey<FormState>();
  @override
  void initState(){
    titleC=TextEditingController(text: widget.docToEdit!.get('title'));
    detailC=TextEditingController(text: widget.docToEdit!.get('detail'));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          onPressed:(){
            if(FormKey.currentState !.validate()){
              DataBaseServices.updateData(titleC.text, detailC.text,widget.docToEdit,context);
            }},
          label:Text("Save Note"),
          icon: Icon(Icons.save)),
      backgroundColor: Colors.deepOrangeAccent.shade100,
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back,color:Colors.black),
        //backgroundColor: Colors.white,
        backgroundColor:Colors.transparent,
        title: Text("Edit Notes",style: TextStyle(color: Colors.black),),
        actions: [
          IconButton(onPressed:(){
            DataBaseServices.deleteData(widget.docToEdit,context);
          },
        icon: Icon(Icons.delete,color: Colors.black,size: 25,)
          ),
          // IconButton(onPressed:(){
          //   if(FormKey.currentState !.validate()){
          //     DataBaseServices.updateData(titleC.text, detailC.text,widget.docToEdit,context);
          //   }
          // },
          //     icon:Icon(Icons.edit,color: Colors.black,))
        ],
      ),
      body: SafeArea(
        child: Form(
          key: FormKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    controller: titleC,

                    validator:(v){
                      if(v!.isEmpty){
                        return "Please Enter title";
                      }

                      return null;
                    },
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.black)
                      ),
                      enabledBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.black)) ,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),),
                      labelText:"Enter Title",
                      hintStyle: TextStyle(color: Colors.black,fontStyle: FontStyle.italic),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 420,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.top,
                      expands: true ,
                      maxLines: null,
                      //minLines: 1,
                      controller: detailC,
                      validator:(v){
                        if(v!.isEmpty){
                          return "Please Enter Detail";
                        }
                        return null;
                      },
                      decoration: InputDecoration(

                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.black)
                        ),
                        enabledBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.black)) ,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),),
                        labelText:"Enter Details",
                        hintStyle: TextStyle(color: Colors.black,fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),


          ]),
            )
    ),),),);
  }
}
