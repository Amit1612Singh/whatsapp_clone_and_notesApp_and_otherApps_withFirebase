import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
class profilePage extends StatefulWidget {

  @override
  State<profilePage> createState() => _profilePageState();
}
User? UserId =FirebaseAuth.instance.currentUser;
class _profilePageState extends State<profilePage> {

  bool loading=false;
  Future<void> emailVerify() async{
    setState(() {
      loading = true;
    });
    if(UserId!= null && !UserId!.emailVerified) {
      try {

        await UserId!.sendEmailVerification().then((value) =>
        {
        setState(() {
        loading = false;
        }),

          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(" Email verification link has been sent")))
        });
      } catch (e) {
        setState(() {
          loading = true;
        });
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(e.toString())));
        setState(() {
          loading = true;
        });
      }

    }
    else  ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(" Your Email is already verified")));

    setState(() {
      loading = false;
    });
  }
  //var fb=FirebaseFirestore.instance.collection("Register Email");
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
      // color: Colors.pink,
       child: StreamBuilder<QuerySnapshot>(
           stream: FirebaseFirestore.instance.
           collection("Register Email").where("user ID",isEqualTo:UserId?.uid).snapshots(),
           builder:(context,AsyncSnapshot<QuerySnapshot>snapshots) {
             if (!snapshots.hasData) {return
               Center(child: CircularProgressIndicator(),);}
             return ListView.builder(
                 itemCount: snapshots.data!.docs.length,
                 itemBuilder: (context, index) {
                   var myEmail = snapshots.data!.docs[index].get("Email").toString();
                   var naam = snapshots.data!.docs[index].get("userName");
                   var mobile = snapshots.data!.docs[index].get("mobile");
                   var UID=UserId!.uid;
                   var RegisterDate=UserId!.metadata.creationTime;
                   return Container(

                       margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                       child: Padding(
                         padding: const EdgeInsets.only(top: 20,),
                         child: Column(
                           crossAxisAlignment:CrossAxisAlignment.center,
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text(
                                 "Name: $naam ", style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold,
                                   fontStyle: FontStyle.italic),),
                               SizedBox(height: 15,),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 children: [
                                 Text("Email: $myEmail",
                                 style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold,
                                     fontStyle: FontStyle.italic),),
                                 TextButton(onPressed:(){
                                   emailVerify();
                                 },
                                     child:
                                     loading? CircularProgressIndicator():
                                     Text("Verify Email"))
                               ],


                               ),
                               SizedBox(height: 15,),
                               Text(
                                 "Mobile NO: $mobile ",
                                 style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold,
                                     fontStyle: FontStyle.italic),),
                               SizedBox(height: 5,),
                               Text(
                                 "User ID: $UID",
                                 style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic),),
                               SizedBox(height: 5,),
                               Text("Created Accont on: $RegisterDate",
                                 style: TextStyle(fontSize:18,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic),),
                               SizedBox(height: 15,),
                             ]
                         ),
                       )
                   );
                 }
             );

             // if (snapshots.hasError) {return Text("something has error");}
             // if (snapshots.connectionState == ConnectionState.waiting) {
             //   return Center(
             //     child: CupertinoActivityIndicator(),
             //   );
             // }
             // if (snapshots != null && snapshots.data != null) {

           }
           ),
     ),
   );
  }
  }




// final CollectionReference fb=FirebaseFirestore.instance.collection("Register Email");
//  Future<void>getuser() async{
//    final UserId =FirebaseAuth.instance.currentUser!.uid;
//   await fb.where("user ID",isEqualTo:UserId).get().then((v) =>
//         myEmail=v.docs["Email"].toString();
//        // naam=v.doc["userName"],
//        // mobile=v.doc["mobile"],
//   );
// }
// var myEmail;
// String? naam;
// String? mobile;