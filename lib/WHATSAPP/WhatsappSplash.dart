import 'package:amit/WHATSAPP/whatsapp.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
class WhatsappSplash extends StatefulWidget {
  const WhatsappSplash({Key? key}) : super(key: key);

  @override
  State<WhatsappSplash> createState() => _WhatsappSplashState();
}

class _WhatsappSplashState extends State<WhatsappSplash> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(

        splash:Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 180,),
              Image.asset("image/whatsappLogo.png",
              width: 100,
              height: 150,),
              const SizedBox(height: 200,),
              Text("From",style: TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.7),letterSpacing: 2),),
             const  SizedBox(height: 12,),
              Text("Meta",style: TextStyle(fontSize: 25,color: Colors.black.withOpacity(0.7),letterSpacing: 3),)
            ],
          ),
        ),
        splashIconSize: 600,
        backgroundColor: Colors.white,
        duration: 120,

        nextScreen:whatsapp());
  }}




