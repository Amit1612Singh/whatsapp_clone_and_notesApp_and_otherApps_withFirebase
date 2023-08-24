import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';
class Chatting extends StatelessWidget {
  const Chatting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.receive),
          child: Container(
            padding: const EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),

            decoration:const BoxDecoration(
              color: Colors.white,
            ),
            child: const Text(" Hii,Amit \n How are you..??\n where are you right now ",
            style: TextStyle(fontSize: 17)),
          ),
          ),
        ),


        Container(
          margin: const EdgeInsets.only(top: 20,left: 80,bottom: 15),
          alignment: Alignment.centerRight,
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.send),
            child: Container(
              padding:const EdgeInsets.only(left: 10,right:25,top:10,bottom: 10),
              decoration:const BoxDecoration(
                color: Color(0xffe4fdca),
              ),
              child:const Text(" Hello,I am completely fine\n thankx for asking\n What about you..? ",
                  style: TextStyle(fontSize: 17)),
            ),
          ),
        ),


      ],
    );
  }
}
