import 'package:amit/FirebaseAuth/homeAfterLogin.dart';
import 'package:amit/FirebaseAuth/loginD.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:firebase_core/firebase_core.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}
   var currentuser = FirebaseAuth.instance.currentUser;
//final FormKey = GlobalKey<FormState>();
class _RegisterScreenState extends State<RegisterScreen> {
  //var currentuser = FirebaseAuth.instance.currentUser;
  FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController Email = TextEditingController();
  TextEditingController password = TextEditingController();
  var confirmPassword = TextEditingController();
  var Name = TextEditingController();
  var Mobile = TextEditingController();


  void Dispose() {
    super.dispose();
    Email.dispose();
    password.dispose();
  }

  bool loading = false;

  // login function
  Future<void> signUpWithEmail({
    required String Email,
    required String password,
    required BuildContext context,}) async {
    try {
      setState(() {
        loading = true;
      });
      await _auth.createUserWithEmailAndPassword(
          email: Email, password: password).then((value) =>
      {
        setState(() {
          loading = false;
        }),
        FirebaseFirestore.instance.collection(
            "Register Email").add({
          "userName": Name.text,
          "mobile": Mobile.text,
          "Email": Email,
          "userPassword": password,
          "user ID": currentuser!.uid,
          "Created on": DateTime.now()}),

        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Registration successful"))),

        _auth.signOut(),

        Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>loginScreen())),
      });
    }
    catch (e) {
      //print(e);
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString())));
      setState(() {
        loading = false;
      });
    }
  }
  static GlobalKey<FormState>FormKey = new GlobalKey<FormState>();
    @override
    Widget build(BuildContext context) {
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("image/register.png"), fit: BoxFit.cover),
        ),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          backgroundColor: Colors.transparent,
          body: Stack(
            fit: StackFit.expand,
            children: [
              // Image.asset("image/register.png",

              // fit: BoxFit.cover),

              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 2, top: 10),
                      child: Text("Create\nAccount ",
                          style: TextStyle(
                              fontSize: 33,
                              color: Colors.white,
                              fontStyle: FontStyle.italic)),
                    ),
                    SvgPicture.asset(
                      "image/signup.svg",
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.2,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            //top: MediaQuery.of(context).size.height * 0.01,
                            left: 35,
                            right: 35,
                          ),
                          child: Form(
                            key: FormKey,
                            child: Column(
                              children: [
                                TextFormField(
                                  autofocus: true,
                                  controller: Name,
                                  textInputAction: TextInputAction.go,
                                  validator: (v) {
                                    if (v!.isEmpty) {
                                      return "please enter name";
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            15),
                                        borderSide:
                                        BorderSide(color: Colors.black)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            15),
                                        borderSide:
                                        BorderSide(color: Colors.white)),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    hintText: "Name",
                                    labelText: "Name",
                                    hintStyle: TextStyle(
                                        color: Colors.white,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  controller: Email,
                                  autofocus: true,
                                  // onChanged: (v) {
                                  //
                                  //   setState(()
                                  //   {
                                  //     email = v;
                                  //   }
                                  //   );
                                  //
                                  // },
                                  validator: (v) {
                                    if (v!.isEmpty) {
                                      return "please enter email";
                                    }

                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            15),
                                        borderSide:
                                        BorderSide(color: Colors.black)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            15),
                                        borderSide:
                                        BorderSide(color: Colors.white)),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    hintText: "Email",
                                    labelText: "Email",
                                    hintStyle: TextStyle(
                                        color: Colors.white,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  controller: Mobile,
                                  autofocus: true,
                                  keyboardType: TextInputType.phone,
                                  validator: (v) {
                                    if (v!.isEmpty) {
                                      return "please enter mobile No";
                                    }
                                    if (v.length != 10) {
                                      return "please enter 10 Digit number";
                                    }

                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            15),
                                        borderSide:
                                        BorderSide(color: Colors.black)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            15),
                                        borderSide:
                                        BorderSide(color: Colors.white)),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    hintText: "Mobile No",
                                    labelText: "Mobile No",
                                    hintStyle: TextStyle(
                                        color: Colors.white,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  autofocus: true,
                                  // onChanged: (v) {
                                  //
                                  //   setState(()
                                  //   {
                                  //     Password = v;
                                  //   }
                                  //   );
                                  //
                                  // },
                                  obscureText: true,
                                  controller: password,
                                  validator: (v) {
                                    if (v!.isEmpty) {
                                      return "please enter Password";
                                    }
                                    // if (v.length != 8) {return "password should have at least 8 characters";
                                    //  }

                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            15),
                                        borderSide:
                                        BorderSide(color: Colors.black)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            15),
                                        borderSide:
                                        BorderSide(color: Colors.white)),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    hintText: "Password",
                                    labelText: "Password",
                                    hintStyle: TextStyle(
                                        color: Colors.white,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  autofocus: true,
                                  obscureText: true,
                                  controller: confirmPassword,
                                  validator: (v) {
                                    if (v != password.value.text) {
                                      return "please enter same password";
                                    }

                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            15),
                                        borderSide:
                                        BorderSide(color: Colors.black)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            15),
                                        borderSide:
                                        BorderSide(color: Colors.white)),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    hintText: "Confirm password",
                                    labelText: "confirm password",
                                    hintStyle: TextStyle(
                                        color: Colors.white,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                MaterialButton(
                                  onPressed: () async {
                                    if (FormKey.currentState!.validate()) {
                                      await signUpWithEmail(
                                          Email: Email.text,
                                          password: password.text,
                                          context: context);
                                          // FirebaseFirestore.instance.collection(
                                          //     "Register Email")
                                          //     .doc(Name.text,)
                                          //     .set({
                                          //   "userName": Name.text,
                                          //   "mobil": Mobile.text,
                                          //   "Email": Email.text,
                                          //   "userPassword": password.text,
                                          //   "user ID": currentUser?.uid,
                                          //   "Created on": DateTime.now()})
                                      }},

                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          30.0)),

                                  splashColor: Colors.blueGrey,

                                  minWidth: 300.0,

                                  padding: EdgeInsets.symmetric(
                                    vertical: 15.0,
                                  ),

                                  color: Color(0xfff1e6ff),

                                  //Color(0xff6f35a5),

                                  child: loading
                                      ? CircularProgressIndicator()
                                      : Text(
                                    'Register',
                                    style: TextStyle(
                                        fontSize: 18.0, color: Colors.black),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 8),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Already have an Account..?",
                                        style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),

                                      TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      loginScreen()));
                                        },
                                        child: Text(
                                          "Sign IN",
                                          style: TextStyle(
                                              color:

                                              //   Color(0xfff1e6ff),

                                              Color(0xff6f35a5),

                                              // color:Color(0xff4c505b),

                                              decoration:
                                              TextDecoration.underline,
                                              fontSize: 21,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),

                                      // CircleAvatar(

                                      //   radius: 22,

                                      //   backgroundColor: Color

                                      //   //(0xfff1e6ff),

                                      //     (0xff4c505b),

                                      //   child: IconButton(icon: Icon(Icons.arrow_forward),

                                      //       onPressed: (){

                                      //         Navigator.push(context,MaterialPageRoute(builder:(context)=>loginG()));

                                      //       }

                                      //   ),

                                      // ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
}