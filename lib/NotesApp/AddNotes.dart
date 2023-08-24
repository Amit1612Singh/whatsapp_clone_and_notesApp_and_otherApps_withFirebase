import 'package:amit/NotesApp/DatabaseServices.dart';
import'package:flutter/material.dart';




class AddNotes extends StatelessWidget {
  AddNotes({Key? key}) : super(key: key);
  TextEditingController titleC = TextEditingController();
  TextEditingController detailC = TextEditingController();
  final FormKey=GlobalKey<FormState>();

  // var titleC = TextEditingController();
  // var detailC = TextEditingController();
  // var FormKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          onPressed:(){
            if(FormKey.currentState !.validate()){
            DataBaseServices.addData(titleC.text, detailC.text,context);
            }},
          label:Text("Add Note"),
      icon: Icon(Icons.add)),
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color:Colors.black),
        backgroundColor: Colors.white,
        title: Text("Add Notes",style: TextStyle(color: Colors.black),),
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
                      labelText:"Note Title",
                      hintText: 'Note Titles',
                      hintStyle: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.bold,color: Colors.black,fontStyle: FontStyle.italic),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 300,
                    child: TextFormField(
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
                        hintText: 'your note',
                        hintStyle: TextStyle(fontSize: 18,
                            fontWeight: FontWeight.bold,color: Colors.black,fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
