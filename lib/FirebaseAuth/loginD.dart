import 'package:amit/FirebaseAuth/ForgotPassword.dart';
import 'package:amit/FirebaseAuth/RegisterScreen.dart';
import 'package:amit/FirebaseAuth/homeAfterLogin.dart';
import 'package:amit/FirebaseAuth/mainLogin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_svg/flutter_svg.dart';
class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);
  @override
  State<loginScreen> createState() => _loginScreen();
}
class _loginScreen extends State<loginScreen> {
  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
            title: Text('Warning',),
            content: Text("Are you sure to Exit ?"),
            actions: [
              TextButton(onPressed: () {
                Navigator.of(context).pop(true);
              },
                child: Text("Yes"),
              ),
              TextButton(onPressed: () {
                Navigator.of(context).pop(false);
              },
                child: Text("NO"),
              ),
            ],
          ),
    )
    );
  }
  final FormKey = GlobalKey<FormState>();
  TextEditingController Email = TextEditingController();
  TextEditingController password = TextEditingController();
  String email = "";
  String Password = "";

  void Dispose(){
    super.dispose();
    Email.dispose();
    password.dispose();
  }
  FirebaseAuth _auth = FirebaseAuth.instance;
bool loading=false;
  Future<void> LoginWithEmail({
    required String email,
    required String password,
    required BuildContext context
  }) async {
    setState((){
      loading=true;
    });
    try {
      final User=(await _auth.signInWithEmailAndPassword(
          email: email,
          password: password)).user;
          if(User!=null) {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("LOGIN successfulLY")));
            setState((){
              loading=false;
            });
            Navigator.push(context, MaterialPageRoute(
                builder: (context) =>
                    homeScreenLogin()));
          }


    }
    // on FirebaseAuthException catch (e) {
    //   if (e.code == 'user-not-found') {
    //     // final snackBar = SnackBar(content: Text(e.toString()));
    //     // ScaffoldMessenger.of(context).showSnackBar(snackBar);
    //     ScaffoldMessenger.of(context).showSnackBar(
    //         SnackBar(content: Text("Invalid email")));
    //   } else if (e.code == 'wrong-password') {
    //     // print('Wrong password provided for that user.');
    //     ScaffoldMessenger.of(context).showSnackBar(
    //         SnackBar(content: Text("wrong password")));
    //   }
    //   setState((){
    //     loading=false;
    //   });
    // }
    catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content:Text(e.toString())));
      setState((){
        loading=false;
      });
    }

  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:_onWillPop,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image:
          AssetImage("image/login.png"),
              fit: BoxFit.cover),
        ),


        child: Scaffold(
          // appBar: AppBar(
          //   backgroundColor: Colors.transparent,
          //   elevation: 0,
          // ),
backgroundColor: Colors.transparent,
         resizeToAvoidBottomInset: false,

          body:Stack(
            fit: StackFit.expand,
            children: [
              // Image.asset("image/login.png",
              //   fit: BoxFit.cover,
              // ),
              Positioned(child:
              InkWell(

                  child: Icon(Icons.arrow_back,size:30),
              onTap: (){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>mainLogin()));
              }),

                left: 15,
                top: 30,

              ),
              Column(
                //  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.only(left: 3,top: 20),
                      child: Text("Welcome\nBack ",
                          style: TextStyle(fontSize: 33,color: Colors.white,fontStyle: FontStyle.italic)),
                    ),
                  ),
                  SvgPicture.asset("image/login.svg",
                    height: MediaQuery.of(context).size.height*0.3,),
                  SizedBox(height: 10,),
                  SingleChildScrollView(
                      child:Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 4.0,
                            horizontal: 15.0,
                          ),

                          height: 265.0,
                          width: 300,
                          decoration: BoxDecoration(shape: BoxShape.rectangle
                            , color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),),

                          child: Form(
                            key: FormKey,
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 20.0,
                                    ),
                                    child: TextFormField(
                                      controller: Email,
                                        validator: (v){
                                        if(v!.isEmpty) {
                                          return "please enter Email";
                                        }},
                                      // onChanged: (v){
                                      //   setState(()
                                      //       {
                                      //         email=v;
                                      //       }
                                      //   );
                                      //
                                      // },
                                      autocorrect: false  ,
                                    // autofocus: true,
                                        autofocus:false,

                                      style: TextStyle(
                                        fontSize: 15.0,
                                      ),
                                      decoration: InputDecoration(hintText: 'Email ID',
                                          suffixIcon: Icon(Icons.mail),
                                          border:OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                          filled: true,
                                          fillColor: Colors.grey[400],
                                          contentPadding: EdgeInsets.all(10.0)
                                      ),
                                    ),
                                  ),
                                  TextFormField(
                                    controller: password,
                                    validator: (v){
                                      if(v!.isEmpty){
                                        return"please enter Password";
                                      }
                                    },
                                    // onChanged: (v){
                                    //
                                    //   setState(()
                                    //   {
                                    //     Password=v;
                                    //   }
                                    //   );
                                    //
                                    // },
                                    autocorrect: false  ,
                                    autofocus:false,
                                    //autofocus:true,
                                    obscureText:true,
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                    decoration: InputDecoration(hintText: 'Password',
                                        suffixIcon: Icon(Icons.lock),
                                        border:OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                        filled: true,
                                        fillColor: Colors.grey[400],
                                        contentPadding: EdgeInsets.all(10.0)
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3.0,bottom: 3.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextButton(onPressed:(){
                                          Navigator.push(context,MaterialPageRoute(
                                              builder:(context)=>forgotPassword()));
                                        },
                                            child:Text("Forgot password ?",

                                              style: TextStyle(
                                                fontStyle: FontStyle.italic,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            )),

                                      ],
                                    ),
                                  ),
                                    MaterialButton(onPressed: () {
                                        if(FormKey.currentState!.validate() ){
                                          LoginWithEmail (
                                              email: Email.text,
                                          password: password.text,
                                          context: context);
                                        }
                                      },
                                      splashColor: Colors.red[800],
                                      minWidth: 300.0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30.0)),
                                      padding: EdgeInsets.symmetric(
                                        vertical: 12.0,
                                      ),
                                      color: Colors.red,
                                      child: loading?CircularProgressIndicator():Text('Login',
                                        style: TextStyle(fontSize: 18.0,
                                            color: Colors.white),),
                                    ),
                                  

                                ],

                              ),
                            ),
                          ),
                        ),
                      ),
                  


                 SizedBox(height:10,),
                  SingleChildScrollView(
                    reverse: true,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical:10,horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Don't have an Account..?",
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w700,
                            ),),
                          TextButton(
                            onPressed: (){
                              Navigator.push(context,MaterialPageRoute(builder:(context)=>RegisterScreen()));
                            },
                            child: Text("Sign Up",style: TextStyle(
                                color: Color(0xff6f35a5),
                               // color:Color(0xff4c505b),
                                decoration:TextDecoration.underline,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),),
                          ),
                          // CircleAvatar(
                          //   radius: 30,
                          //   backgroundColor: Color
                          //     //(0xfff1e6ff),
                          //     (0xff4c505b),
                          //   child: IconButton(icon: Icon(Icons.arrow_forward),
                          //       onPressed: (){
                          //         Navigator.push(context,MaterialPageRoute(builder:(context)=>RegisterScreen()));
                          //       }
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

        ),
      ),
    );
  }
}

