
import 'package:amit/NotesApp/mainNotes.dart';
import 'package:amit/app_screens/imagesG.dart';
import 'package:flutter/material.dart';
import 'package:amit/main.dart';
import 'package:amit/app_screens/imagesG.dart';
import 'package:amit/FirebaseAuth/mainLogin.dart';
import'package:amit/app_screens/stopwatch.dart';
import 'package:amit/app_screens/timer.dart';
import 'package:amit/app_screens/calculator.dart';
import 'package:amit/WHATSAPP/WhatsappSplash.dart';
class drawer extends StatelessWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drawer(
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
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image:DecorationImage(image:AssetImage('image/myself1.jpg'),)
                    ),
                  ),
                  const Text("Amit Singh",
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
            title: const Text("HOME",
              style: TextStyle(fontSize: 24.0,
              fontStyle: FontStyle.italic),
            ),
            leading: const Icon(Icons.home),
           onTap: (){
               Navigator.push(context,MaterialPageRoute(
                   builder:(context)=>myApp()),);
           },
          ),
            ListTile(
              title: const Text("Calculator",
                style: TextStyle(fontSize: 24.0,
                    fontStyle: FontStyle.italic),
              ),
              leading: const Icon(Icons.calculate_rounded),
              onTap:(){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>calculator()),);
              },
            ),
            ListTile(
              title: const Text("E-COMMERCE UI",
                style: TextStyle(fontSize: 24.0,
                    fontStyle: FontStyle.italic),
              ),
              leading: const Icon(Icons.image ),
              onTap:(){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>imageboth()),);
              },
            ),
            ListTile(
              title: const Text("LOGIN",
                style: TextStyle(fontSize: 24.0,
                    fontStyle: FontStyle.italic),
              ),
              leading: const Icon(Icons.login),
              onTap:(){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>mainLogin()));
              },
            ),
            ListTile(
              title:const Text("Timer",
                style: TextStyle(fontSize: 24.0,
                    fontStyle: FontStyle.italic),
              ),
              leading: const Icon(Icons.timer),
              onTap:(){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>timerG()));
              },
            ),

            ListTile(
              title: const Text("STOPWATCH",
                style: TextStyle(fontSize: 24.0,
                    fontStyle: FontStyle.italic),
              ),
              leading: const Icon(Icons.watch),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(
                    builder:(context)=>const stopwatch()),);
              },
            ),

            ListTile(
              title: const Text("Whatsapp",
                style: TextStyle(fontSize: 24.0,
                    fontStyle: FontStyle.italic),
              ),
              leading: const Icon(Icons.call_outlined),
              onTap:(){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>const WhatsappSplash()),);
              },
            ),

            ListTile(
              title: const Text("NOTES APP",
                style: TextStyle(fontSize: 24.0,
                    fontStyle: FontStyle.italic),
              ),
              leading:const Icon(Icons.image ),
              onTap:(){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>mainNotes ()),);
              },
            ),


          ],
        ),
      ),
    );
  }
}
