import 'package:amit/FirebaseAuth/changePassword.dart';
import 'package:amit/FirebaseAuth/dashboard.dart';
import 'package:amit/FirebaseAuth/profile.dart';
import 'package:amit/FirebaseAuth/loginD.dart';
import 'package:amit/FirebaseAuth/mainLogin.dart';
import 'package:amit/FirebaseAuth/RegisterScreen.dart';
import 'package:amit/FirebaseAuth/profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class homeScreenLogin extends StatefulWidget {
  @override
  State<homeScreenLogin> createState() => _homeScreenLoginState();

}


class _homeScreenLoginState extends State<homeScreenLogin>  with TickerProviderStateMixin {
  FirebaseAuth _auth=FirebaseAuth.instance;
  TabController? tb;
  @override
  void initState(){
    super.initState();
    tb=TabController(
        length: 3, vsync: this );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed:() async{
          await _auth.signOut().whenComplete( () =>
          Navigator.push(context,MaterialPageRoute(builder:(context)=>loginScreen())));

          },
              icon:Icon(Icons.logout))
        ],

        title:
        Text("Welcome User"),
        elevation: 0,
      ),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar:
          TabBar(
indicator: UnderlineTabIndicator(
  borderSide: BorderSide(width: 2)
),
            controller: tb,
            labelStyle: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
            padding: EdgeInsets.all(15.0),
            unselectedLabelColor: Colors.black45,
            labelColor: Colors.red,
            tabs: [
              Tab(child: Text("Dashboard")),
              Tab(child: Text("Profile")),
              Tab(child: Text("Change Password")),
            ],
          ),



      body:

      TabBarView(
        controller: tb,
        children: [
          dashboardPage(),
          profilePage(),
          changePasswordPage(),

        ],
      ),

      // Container(
        //
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        // child: Image.asset("image/priyanka m.jpg",fit: BoxFit.cover,),
        // // decoration: BoxDecoration(
        // //   image:DecorationImage(image:AssetImage(" image/priyanka m.jpg",),fit: BoxFit.cover,
        // //       )
        // // ),



    );
  }
}
