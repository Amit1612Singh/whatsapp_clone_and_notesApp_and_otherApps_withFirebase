import 'package:amit/FirebaseAuth/loginD.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class changePasswordPage extends StatefulWidget {

  @override
  State<changePasswordPage> createState() => _changePasswordPageState();
}

class _changePasswordPageState extends State<changePasswordPage> {

  static GlobalKey<FormState>FormKey = new GlobalKey<FormState>();
  TextEditingController oldPassword=TextEditingController();
  TextEditingController NewPassword=TextEditingController();
  TextEditingController ConfirmNewPassword=TextEditingController();
  void Dispose() {
    super.dispose();
    ConfirmNewPassword.dispose();
    NewPassword.dispose();
    oldPassword.dispose();
  }
  bool loading=false;
Future<void>changePassword({
  required  password,
   required BuildContext context}) async {
    try{
      setState(() {
        loading = true;
      });
      await FirebaseAuth.instance.currentUser!.updatePassword(password).then((value) =>{
        FirebaseAuth.instance.signOut(),
        Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>loginScreen())),
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content:Text(" Password Updated,Now Login Again")),
        )
      });
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
        resizeToAvoidBottomInset: false,
        body: Container(
          padding:EdgeInsets.only(left: 35,right: 35),
          child:Form(
            key: FormKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20,bottom: 30),
                    child: Text(" You want to change password",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

                  ),
                  TextFormField(
                    autofocus: false,
                    controller: oldPassword,
                    textInputAction: TextInputAction.go,
                    validator: (v) {
                      if (v!.isEmpty) {
                        return "please enter  your old Password";
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
                      hintText: "Enter Old Passsword",
                      labelText: "Old Password",
                      hintStyle: TextStyle(
                          color: Colors.black54,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                    SizedBox(height: 20),
                    TextFormField(

                      autofocus: false,
                      controller: NewPassword,
                      textInputAction: TextInputAction.go,
                      validator: (v) {
                        if (v!.isEmpty) {
                          return "please enter New Password";
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
                        hintText: "Enter New Passsword",
                        labelText: "New Password",
                        hintStyle: TextStyle(
                            color: Colors.black54,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                  SizedBox(height: 20),
                  TextFormField(
                    autofocus: false,
                    controller: ConfirmNewPassword,
                    textInputAction: TextInputAction.go,
                    validator: (v) {
                      if (v !=NewPassword.value.text) {
                        return "please enter Same Password";
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
                      hintText: "Confirm Passsword",
                      labelText: "Confirm Password",
                      hintStyle: TextStyle(
                          color: Colors.black54,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  SizedBox(height: 20,),

                  MaterialButton(onPressed: (){
                    if(FormKey.currentState!.validate()){
                      changePassword(
                          password: NewPassword.text,
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
                    child: loading? CircularProgressIndicator():Text(
                      'Change Password',
                      style: TextStyle(fontSize: 18.0,
                          color: Colors.white),),
                  ),



                ],
              ),
            ),
          ),
        ),
    ) ;
  }
}
