import 'package:flutter/material.dart';


class CallsPage extends StatefulWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
      child: Column(
        children: [
          InkWell(
            onTap: (){},
            child: Row(
              children: [
                Container(
                ),
                  ClipRRect(
                      child: Image.asset("image/myself4.jpg",width: 55,height: 55,fit: BoxFit.cover,),
                  borderRadius: BorderRadius.circular(40)),
              //  ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Create call link",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17
                      ),),
                      SizedBox(height: 8,),
                      Text("Share a link for your WhatsApp call",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54
                      ),)
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 8,),
          Container(
            alignment: Alignment.centerLeft,
            child: Text("Recent",
            style: TextStyle(
              color: Colors.black.withOpacity(0.6),
              fontSize:16 ,
              fontWeight:FontWeight.w500
            )),
          ),
          SizedBox(height: 8,),
          InkWell(
            onTap: (){},
            child: Container(
              child: Row(
                children: [
                 ClipRRect(
                   borderRadius: BorderRadius.circular(40),
                    child: Image.asset("image/priyanka h2.jpg",width: 55,height: 55,fit: BoxFit.cover),
                 ),
                  Padding(
                    padding: const EdgeInsets.only(left:20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Priyanka", style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                    ),
                        SizedBox(height: 08,),
                        Row(
                          children: [
                            Icon(Icons.call_received,
                            size: 16,
                            color: Color(0xFF075E55)),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text("17 November,10:54 am", style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 15,
                              ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.call,
                  color: Color(0xFF075E55),)


    ],
                 ),

              ),
          ),

          SizedBox(height: 25,),
          InkWell(
            onTap: (){},
            child: Container(
              child: Row(
                children: [
                  ClipRRect(

                      borderRadius: BorderRadius.circular(40),
                    child: Image.asset("image/myself1.jpg",width: 55,height: 55,fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Akash", style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                        ),
                        SizedBox(height: 08,),
                        Row(
                          children: [
                            Icon(Icons.call_received,
                                size: 16,
                                color: Color(0xFF075E55)),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text("02 November,02:26 am", style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 15,
                              ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.call,
                    color: Color(0xFF075E55),)


                ],
              ),

            ),
          ),



          SizedBox(height: 25,),
          InkWell(
            onTap: (){},
            child: Container(
              child: Row(
                children: [
                  ClipRRect(

                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset("image/laptop image.jpg",width: 55,height: 55,fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Vivek", style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                        ),
                        SizedBox(height: 08,),
                        Row(
                          children: [
                            Icon(Icons.call_made_sharp,
                                size: 16,
                                color: Colors.red),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text("8 November,10:04 am", style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 15,
                              ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.call,
                    color: Color(0xFF075E55),)


                ],
              ),

            ),
          ),


          SizedBox(height: 25,),
          InkWell(
            onTap: (){},
            child: Container(
              child: Row(
                children: [
                  ClipRRect(

                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset("image/image1.jpg",width: 55,height: 55,fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Shalini", style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                        ),
                        SizedBox(height: 08,),
                        Row(
                          children: [
                            Icon(Icons.call_received,
                                size: 16,
                                color: Color(0xFF075E55)),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text("1 November,11:34 pm", style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 15,
                              ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.videocam,
                    color: Color(0xFF075E55),)


                ],
              ),

            ),
          ),


          SizedBox(height: 25,),
          InkWell(
            onTap: (){},
            child: Container(
              child: Row(
                children: [
                  ClipRRect(

                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset("image/myself4.jpg",width: 55,height: 55,fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sudeep", style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                        ),
                        SizedBox(height: 08,),
                        Row(
                          children: [
                            Icon(Icons.call_received,
                                size: 16,
                                color: Colors.red),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text("30 September,10:24 am", style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 15,
                              ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.videocam_rounded,
                    color: Color(0xFF075E55),)


                ],
              ),

            ),
          ),


          SizedBox(height: 25,),
          InkWell(
            onTap: (){},
            child: Container(
              child: Row(
                children: [
                  ClipRRect(

                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset("image/muskaan hr.png",width: 55,height: 55,fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Muskaan", style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                        ),
                        SizedBox(height: 08,),
                        Row(
                          children: [
                            Icon(Icons.call_received,
                                size: 16,
                                color: Colors.red),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text("29 september,11:59 pm", style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 15,
                              ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.videocam_rounded,
                    color: Color(0xFF075E55),)


                ],
              ),

            ),
          ),


          SizedBox(height: 25,),
          InkWell(
            onTap: (){},
            child: Container(
              child: Row(
                children: [
                  ClipRRect(

                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset("image/GOODsence.jpg",width: 55,height: 55,fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Advitiya", style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                        ),
                        SizedBox(height: 08,),
                        Row(
                          children: [
                            Icon(Icons.call_received,
                                size: 16,
                                color: Colors.red),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text("24 September,12:09 am", style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 15,
                              ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.call,
                    color: Color(0xFF075E55),)


                ],
              ),

            ),
          ),

          SizedBox(height: 25,),
          InkWell(
            onTap: (){},
            child: Container(
              child: Row(
                children: [
                  ClipRRect(

                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset("image/image2.jpg",width: 55,height: 55,fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Simran", style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                        ),
                        SizedBox(height: 08,),
                        Row(
                          children: [
                            Icon(Icons.call_received,
                                size: 16,
                                color: Color(0xFF075E55)),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text("22 september,09:56 pm", style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 15,
                              ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.videocam_rounded,
                    color: Color(0xFF075E55),)


                ],
              ),

            ),
          ),


          SizedBox(height: 25,),
          InkWell(
            onTap: (){},
            child: Container(
              child: Row(
                children: [
                  ClipRRect(

                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset("image/coverBcas.jpg",width: 55,height: 55,fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Harsh", style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                        ),
                        SizedBox(height: 08,),
                        Row(
                          children: [
                            Icon(Icons.call_received,
                                size: 16,
                                color: Colors.red),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text("17 September,10:54 am", style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 15,
                              ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.videocam_rounded,
                    color: Color(0xFF075E55),)


                ],
              ),

            ),
          ),
          
        ],
      ),
    ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF128c7e),
        onPressed:(){} ,
        child: Icon(Icons.call,),
      ),
    );
  }
}
