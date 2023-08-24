import 'package:flutter/material.dart';
import 'package:amit/WHATSAPP/ChatModel.dart';
import 'package:amit/WHATSAPP/whatsapp.dart';

import 'Chatting.dart';

class IndividualChat extends StatefulWidget {
  var index;
  IndividualChat(this.index) : super();

  @override
  State<IndividualChat> createState() => _IndividualChatState();
}

class _IndividualChatState extends State<IndividualChat> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Color(0xFF128c7e),
      appBar: AppBar(
        leadingWidth: 70,
        backgroundColor:const Color(0xFF128c7e),
        leading:
        InkWell(
          child: Row(
                children: [
                  const Icon(Icons.arrow_back,size: 20),

                  const SizedBox(width: 5,),
                  CircleAvatar(radius:16,
                    backgroundImage: NetworkImage(chatList[widget.index].profilePic),),
                ],
              ),

            onTap:(){
             // Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(
                  builder:(context)=>whatsapp()));
          }
        ),
        title:
        InkWell(
          child: Column(children: [
              Text(chatList[widget.index].title, style:const TextStyle(fontSize: 18.0,
                  fontStyle:FontStyle.italic),),
            const  Text("Last seen 1 hour ago", style: TextStyle(fontSize: 9.0,
                  fontStyle:FontStyle.italic),),
            ]),

         onTap: (){},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: InkWell(child: const Icon(Icons.videocam_rounded,),
              onTap: (){},
            )
            ,

          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
                borderRadius:BorderRadius.circular(36),
                onTap: (){},
              child: const Icon(Icons.add_call),),
          ),

          PopupMenuButton(itemBuilder: (context)=>[
            const PopupMenuItem(child: Text("View contact")),
            const PopupMenuItem(child: Text("Media,links,and docs")),
            const PopupMenuItem(child: Text("Search")),
            const PopupMenuItem(child: Text("Mute notification")),
            const PopupMenuItem(child: Text("Disappearing message")),
            const PopupMenuItem(child: Text("Wallpaper")),
            const PopupMenuItem(child: Text("More")),
          ]),
        ],

      ),
      body: Container(

        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("image/whatsappBG1.jpg"),
        fit: BoxFit.cover,
           opacity:0.4
        )
        ),
        height:MediaQuery.of(context).size.height ,
        width:MediaQuery.of(context).size.width,

        child: Stack(
          children: [
            ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Container(
                    width: 250,
                    margin: const EdgeInsets.all(15),
                    decoration: BoxDecoration(color:const Color(0XFFFFF3C2),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),blurRadius: 8
                      )
                    ]
                    ),
                    child: const Text("Messages and calls are end to end encrypted,No one outside of this chat can read or listen.Tap to learn more....",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15)),
                  ),
                ),
                const Chatting(),
                const Chatting(),
                const Chatting(),
                const Chatting(),
                const Chatting(),
                const Chatting(),
                const Chatting(),
                const Chatting(),
                const Chatting(),



              ],

            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                    width:MediaQuery.of(context).size.width-55,
                      child: Card(
                        margin: const EdgeInsets.only(left: 6,right: 4,bottom: 8),
                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType:TextInputType.multiline,

                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Type a message",
                              contentPadding:const EdgeInsets.all(5),
                              prefixIcon: IconButton(onPressed:(){},
                                  icon:const Icon( Icons.emoji_emotions)),
                              suffixIcon:Row(
                             mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(onPressed: (){},
                                      icon:const Icon(Icons.attach_file)),
                                  IconButton(onPressed: (){},
                                      icon: const Icon(Icons.camera_alt)),

                                ],
                              )

                            ),
                          ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2,right: 2,bottom: 8),
                    child: CircleAvatar(
                      backgroundColor:const Color(0xFF128C7E),
                      radius: 25,
                      child:IconButton(onPressed: (){},
                          icon: const Icon(Icons.mic,color:Colors.white)),
                    ),
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


