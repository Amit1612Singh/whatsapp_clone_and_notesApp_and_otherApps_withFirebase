import 'package:amit/FirebaseAuth/RegisterScreen.dart';
import 'package:amit/FirebaseAuth/homeAfterLogin.dart';
import 'package:amit/FirebaseAuth/loginD.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import'package:firebase_auth/firebase_auth.dart';

class mainLogin extends StatefulWidget {
  const mainLogin({Key? key}) : super(key: key);

  @override
  State<mainLogin> createState() => _mainLoginState();
}

class _mainLoginState extends State<mainLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder:(context,snapshot){
          if(snapshot.hasData){
            return homeScreenLogin();
          }
          else{
    return

    Container(
    height:MediaQuery.of(context).size.height,
    width: double.infinity,
    child:SingleChildScrollView(
    child: Column(
    children: [
    Container(
    margin: EdgeInsets.only(left: 10,top: 80),
    child:Text("Welcome Here",
    style: TextStyle(fontSize: 33,color: Colors.black,fontStyle: FontStyle.italic),),
    ),
    SizedBox(height: 20),
    SvgPicture.asset("image/chat.svg",
    height: MediaQuery.of(context).size.height*0.45,),
    SizedBox(height: 40),
    MaterialButton(onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>loginScreen()));
    },
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30.0)),
    splashColor: Colors.blue,
    minWidth: 300.0,
    padding: EdgeInsets.symmetric(
    vertical: 15.0,
    ),
    color: Color(0xff6f35a5),
    child: Text('Login',
    style: TextStyle(fontSize: 18.0,
    color: Colors.white),),
    ),
    SizedBox(height: 20),
    MaterialButton(onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
    },
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30.0)),
    splashColor: Colors.red[800],
    minWidth: 300.0,
    padding: EdgeInsets.symmetric(
    vertical: 15.0,
    ),
    color: Color(0xfff1e6ff),
    child: Text('Sign Up',
    style: TextStyle(fontSize: 18.0,
    color: Colors.black),),
    ),
    ],


    ),
    ),
    );

    }
     }

      )
    );
  }
}
