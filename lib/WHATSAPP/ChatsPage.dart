import 'package:amit/WHATSAPP/ChatModel.dart';
import 'package:amit/WHATSAPP/individualChat.dart';
import 'package:flutter/material.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:    ListView.separated(itemBuilder:(context,index)=>ListTile(
        leading: CircleAvatar(backgroundImage: AssetImage(chatList[index].profilePic),),
        title:Text(chatList[index].title,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 17,
                color: Colors.black87
            )),
        subtitle: Text(chatList[index].message),
        trailing:Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8,),
              child: Text(chatList[index].time),
            ),
            SizedBox(height: 05,),
            Container(
              alignment: Alignment.center,
              height: 22,
              width: 22,
              decoration:BoxDecoration(
                  color: Color(0XFF0FCE5E),
                  borderRadius: BorderRadius.circular(40)
              ) ,
              child: Text("2",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 16,),
              ),

            ),
          ],
        ),
        onTap: (){
          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(
              builder:(context)=>IndividualChat(index)),);
        },

      ),
        separatorBuilder:(context,index)=>Divider(),

        itemCount:chatList.length,


      ),
    floatingActionButton: FloatingActionButton(
      backgroundColor: Color(0xFF128c7e),
      onPressed:(){} ,
      child: Icon(Icons.message,),

    ),
    );
  }
}
