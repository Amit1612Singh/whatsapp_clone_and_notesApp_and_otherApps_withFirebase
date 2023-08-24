import 'package:flutter/material.dart';
import 'package:amit/WHATSAPP/whatsapp.dart';
class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF128c7e),
        leading: InkWell(onTap: (){
          Navigator.pop(context);
         // Navigator.push(context,MaterialPageRoute(builder:(context)=>whatsapp()));
        },
            child: const Icon(Icons.arrow_back)),
        title:const Text("Setting",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(

        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              child: Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "image/myself4.jpg",
                        width: 55,
                        height: 55,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Amit Singh",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Hey there ,i am using whatsapp......",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black54),
                          )
                        ],
                      ),
                    )
                  ],
                                  ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10,top: 20,),
              child: ListTile(
                leading: Icon(Icons.key,size: 30,),
                title: Text("Account",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16
                ),),
                subtitle: Text("Security notifications,change number",
                style: TextStyle(
                  fontSize: 15
                ),),

              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10,top: 20,),
              child: ListTile(
                leading: Icon(Icons.account_circle,size: 30,),
                title: Text("Avatar",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                  ),),
                subtitle: Text("Create,edit,profile photo",
                  style: TextStyle(
                      fontSize: 15
                  ),),

              ),
            ),
            const  Padding(
              padding: EdgeInsets.only(left: 10,top: 20,),
              child: ListTile(
                leading: Icon(Icons.lock,size: 30,),
                title: Text("Privacy",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                  ),),
                subtitle: Text("Block contacts,disappearing messages",
                  style: TextStyle(
                      fontSize: 15
                  ),),

              ),
            ),

            const  Padding(
              padding: EdgeInsets.only(left: 10,top: 20,),
              child: ListTile(
                leading: Icon(Icons.message,size: 30,),
                title: Text("Chats",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                  ),),
                subtitle: Text("Theme,wallpapers,chat history",
                  style: TextStyle(
                      fontSize: 15
                  ),),

              ),
            ),

            const Padding(
              padding: EdgeInsets.only(left: 10,top: 20,),
              child: ListTile(
                leading: Icon(Icons.notifications,size: 30,),
                title: Text("Notifications",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                  ),),
                subtitle: Text("Message,group & call tones",
                  style: TextStyle(
                      fontSize: 15
                  ),),

              ),
            ),

            const Padding(
              padding:EdgeInsets.only(left: 10,top: 20,),
              child: ListTile(
                leading: Icon(Icons.data_saver_off,size: 30,),
                title: Text("Storage and data",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                  ),),
                subtitle: Text("Network usage,auto-download",
                  style: TextStyle(
                      fontSize: 15
                  ),),

              ),
            ),

            const Padding(
              padding: EdgeInsets.only(left: 10,top: 20,),
              child: ListTile(
                leading: Icon(Icons.language,size: 30,),
                title: Text("App language",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                  ),),
                subtitle: Text("English (phone's language)",
                  style: TextStyle(
                      fontSize: 15
                  ),),

              ),
            ),

            const Padding(
              padding:EdgeInsets.only(left: 10,top: 20,),
              child: ListTile(
                leading: Icon(Icons.help,size: 30,),
                title: Text("help",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                  ),),
                subtitle: Text("Help center,contact us,privacy policy",
                  style: TextStyle(
                      fontSize: 15
                  ),),

              ),
            ),

            const Padding(
              padding:EdgeInsets.only(left: 10,top: 20,),
              child: ListTile(
                leading: Icon(Icons.people_alt,size: 30,),
                title: Text("Invite a friend",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                  ),),


              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Column(
                children: const [
                  Text("from",style: TextStyle(fontSize: 16),),
                  Text("Meta",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold))
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
