import 'package:amit/FirebaseAuth/loginD.dart';
import "package:flutter/material.dart";
import 'package:firebase_auth/firebase_auth.dart';
class forgotPassword extends StatefulWidget {
  const forgotPassword({Key? key}) : super(key: key);

  @override
  State<forgotPassword> createState() => _forgotPasswordState();
}
//final FormKey= GlobalKey<FormState>();

class _forgotPasswordState extends State<forgotPassword> {
  static GlobalKey<FormState>FormKey = new GlobalKey<FormState>();
  TextEditingController forgetEmail=TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;

  void Dispose() {
    super.dispose();
    forgetEmail.dispose();
  }
  bool loading=false;

  Future<void>forgotPassword( {
    required String Email,
    required BuildContext context}) async{
    try{
      setState(() {
        loading = true;
      });

      await _auth.sendPasswordResetEmail(email: Email).then((value) =>{
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content:Text("New Password Sent To Your Email"))),
        Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> loginScreen()))

      } );

  } catch (e){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content:Text(e.toString())));
      setState(() {
        loading = true;
      });
  }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(" Forget password"),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 35,
        right: 35,
        top: 20,
        bottom: 30),
        child: Column(
          children: [
            Text("Don't worry User,We are happy to help you",style: TextStyle(fontSize: 20)),
            SizedBox(height: 15),
            Form(
              key: FormKey,
              child: TextFormField(
                autofocus: false,
                controller:forgetEmail,
               // textInputAction: TextInputAction.go,
                validator: (v) {
                  if (v!.isEmpty) {
                    return "please enter Email";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          15),
                      borderSide:
                      BorderSide(color: Colors.blue)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          15),
                      borderSide:
                      BorderSide(color: Colors.black)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "Enter Email",
                  labelText: "Email",
                  hintStyle: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            SizedBox(height: 20,),
            MaterialButton(onPressed: () async{
              if(FormKey.currentState!.validate()){
               await forgotPassword(
                    Email:forgetEmail.text,
                    context:context);
              }
            },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              splashColor: Colors.blue,
              minWidth: 320.0,
              padding: EdgeInsets.symmetric(
                vertical: 15.0,
              ),
              color: Color(0xff6f35a5),
              child:  loading
                  ? CircularProgressIndicator():Text('Reset password',
                style: TextStyle(fontSize: 18.0,
                    color: Colors.white),),
            ),

          ],
        ),
      ),
    );
  }
}
