import 'package:amit/app_screens/imagesG.dart';
import 'package:flutter/material.dart';
//import 'package:amit/app_screens/first_screen.dart';
import 'package:amit/app_screens/mainDRAWER.dart';
import 'package:amit/app_screens/imagesG.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:amit/FirebaseAuth/loginD.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'firebase_options.dart';
//import 'package:firebase_options.dart';
void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
   // options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(  myApp());
}
class myApp extends StatefulWidget {
  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // routes: {
        //   '/first':(context)=>first_screen(),
        // },
      debugShowCheckedModeBanner: false,
      title: "NAVIGATOR",
      home:homePage(),
    );
  }
}
class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}
class _homePageState extends State<homePage> {
  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) =>AlertDialog(
        title: Text('Warning',),
        content: Text("Are you sure to Exit ?"),
        actions: [
          TextButton(onPressed:(){
            Navigator.of(context).pop(true);
          },
            child:Text("Yes"),
          ),
          TextButton(onPressed:(){
            Navigator.of(context).pop(false);
          },
            child:Text("NO"),
          ),
        ],
      ),
    )
    );
  }

  // @override
  // void initState(){
  //   super.initState();
  //   Timer(Duration(seconds: 5),
  //           ()=>Navigator.push(context, MaterialPageRoute(
  //           builder: (context)=>spalshSCR())));
  // }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop:_onWillPop,
    child:Scaffold(

      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("multiple screen"),
      ),
      drawer: drawer(),

      body:Container(
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hii,I AM AMIT SINGH\n WELCOME TO MY APP\n",
                style: TextStyle(
                  fontSize: 24.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,

                  color: Colors.black87,


                ),
              ),
              Text( " OPEN THE DRAWER TO\n MOVE  ANOTHER SCREEN ",style: TextStyle(
                fontSize: 24.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,

                color: Colors.black87,


              ),
              )

            ]
        ),


      ),
      floatingActionButton:FloatingActionButton(
        child: Icon(Icons.add_call,color: Colors.blue,size: 25.0),
        tooltip: "call",
        onPressed: (){},
        backgroundColor:Colors.redAccent[100],
        splashColor: Colors.red,

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,


    ),
    );
  }     

}

