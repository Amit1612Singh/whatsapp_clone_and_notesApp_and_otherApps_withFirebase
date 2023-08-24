import 'package:amit/NotesApp/mainNotes.dart';
import 'package:amit/WHATSAPP/WhatsappSplash.dart';
import 'package:amit/app_screens/calculator.dart';
import 'package:amit/app_screens/imagesG.dart';
import 'package:amit/FirebaseAuth/mainLogin.dart';
import 'package:amit/app_screens/mainDRAWER.dart';
import 'package:amit/app_screens/stopwatch.dart';
import 'package:amit/app_screens/timer.dart';
import 'package:amit/main.dart';
import 'package:flutter/material.dart';
import 'package:amit/WHATSAPP/ChatModel.dart';
import 'package:amit/WHATSAPP/individualChat.dart';
import 'package:amit/WHATSAPP/StatusPage.dart';
import 'package:amit/WHATSAPP/SettingPage.dart';
import 'CallsPage.dart';
import 'package:amit/WHATSAPP/ChatsPage.dart';
//import '../ChatModel.dart';
//import 'package:amit/app_screens/individualChat.dart';



class whatsapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(

        // backgroundColor: Color(0xFF128c7e),
        appBar:AppBar(
          actions: [
            Icon(Icons.search ),
            PopupMenuButton(itemBuilder:(context)=>[

              PopupMenuItem( value: 1,
                  child: Text("New group")),
              PopupMenuItem(
                  value:2,
                  child: Text("New broadcast")),
              PopupMenuItem(
                  value:3,
                  child: Text("Linked device")),
              PopupMenuItem(
                  value:4,
                  child: Text("Starred message")),
              PopupMenuItem(
                  value:5,
                  child: Text("Payments")),
              PopupMenuItem( value: 6,
                child: Text("Settings"),
              ),
            ],
            onSelected: (value){
              if(value==6){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingPage()));
              }
            },)
          ],

          backgroundColor:const Color(0xFF128c7e),
          title: const  Text("Whatsapp"),
          bottom: TabBar(
            labelStyle:const  TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
            padding: const EdgeInsets.all(15.0),
            unselectedLabelColor: Colors.white54,
            tabs: [
              const Tab(child: Icon(Icons.camera_alt),),
              Tab(child: Row(

                children: [
                   Text("CHATS"),
                  Expanded(child: SizedBox(width: 03,)),
                  Container(
                        alignment: Alignment.center,
                         height:14,
                       //  width: 22,
                        decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                          child: Text("08",
                            style:TextStyle(fontSize: 11.0,
                                color: Color(0xFF075E55)) ,),

                      ),


                  // ),
                ],
              )
              ),
              const Tab(child: Text("STATUS"),),
              const  Tab(child: Text("CALLS"),),
            ],
          ),

          // leading: InkWell(child: Icon(Icons.arrow_back,size: 30),
          //
          // onTap: (){
          //   Navigator.push(context, MaterialPageRoute(builder: (context)=>drawer()));
          // }
          // ),
        ) ,
        drawer: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Drawer(

            elevation: 100,
            child: Column(
              children: [
                Container(
                  color: Colors.cyan,
                  width:double.infinity,
                  child: Column(
                    children: [
                      Container(
                        width:100,
                        height:100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image:DecorationImage(image:AssetImage('image/myself1.jpg'),)
                        ),
                      ),
                      Text("Amit Singh",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 24.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Text("HOME",
                    style: TextStyle(fontSize: 24.0,
                        fontStyle: FontStyle.italic),
                  ),
                  leading: Icon(Icons.home),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(
                        builder:(context)=>myApp()),);
                  },
                ),
                ListTile(
                  title: Text("Calculator",
                    style: TextStyle(fontSize: 24.0,
                        fontStyle: FontStyle.italic),
                  ),
                  leading: Icon(Icons.calculate_rounded),
                  onTap:(){
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>calculator()),);
                  },
                ),
                ListTile(
                  title: Text("E-COMMERCE UI",
                    style: TextStyle(fontSize: 24.0,
                        fontStyle: FontStyle.italic),
                  ),
                  leading: Icon(Icons.image ),
                  onTap:(){
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>imageboth()),);
                  },
                ),
                ListTile(
                  title: Text("LOGIN",
                    style: TextStyle(fontSize: 24.0,
                        fontStyle: FontStyle.italic),
                  ),
                  leading: Icon(Icons.login),
                  onTap:(){
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>mainLogin()));
                  },
                ),
                ListTile(
                  title: Text("Timer",
                    style: TextStyle(fontSize: 24.0,
                        fontStyle: FontStyle.italic),
                  ),
                  leading: Icon(Icons.timer),
                  onTap:(){
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>timerG()));
                  },
                ),

                ListTile(
                  title: Text("STOPWATCH",
                    style: TextStyle(fontSize: 24.0,
                        fontStyle: FontStyle.italic),
                  ),
                  leading: Icon(Icons.watch),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(
                        builder:(context)=>stopwatch()),);
                  },
                ),

                ListTile(
                  title: Text("Whatsapp",
                    style: TextStyle(fontSize: 24.0,
                        fontStyle: FontStyle.italic),
                  ),
                  leading: Icon(Icons.call_outlined),
                  onTap:(){
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>WhatsappSplash()),);
                  },
                ),

                ListTile(
                  title: Text("NOTES APP",
                    style: TextStyle(fontSize: 24.0,
                        fontStyle: FontStyle.italic),
                  ),
                  leading: Icon(Icons.image ),
                  onTap:(){
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>mainNotes ()),);
                  },
                ),


              ],
            ),
          ),
        ),
        body:const  TabBarView(
          children: [
            Center(child: Text("CAMERA",style: TextStyle(fontSize: 40.0,),)),
         ChatsPage(),
           // Center(child: Text("STATUS",style: TextStyle(fontSize: 40.0,),)),
            StatusPage(),
           //Center(child: Text("CALL",style: TextStyle(fontSize: 40.0,),)),
          CallsPage(),
          ],
        ) ,
        // floatingActionButton: FloatingActionButton(
        //   backgroundColor: Color(0xFF128c7e),
        //   onPressed:(){} ,
        //   child: Icon(Icons.message,),
        //
        // ),
      ),

    );
  }
}
