import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
        children: [

          SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Column(
              children: [
                Container(
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: Colors.grey, width: 2.8)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                "image/amit5.jpg",
                                height: 55,
                                width: 55,
                                fit: BoxFit.cover,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const  Text(
                                "My Status",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                ),
                              ),
                              const  SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                "Today,09:30am",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            child: const Icon(Icons.more_vert, color: Color(0xff075e55)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const  SizedBox(height: 14,),
                Container(
                  alignment: Alignment.centerLeft,
                child:
                      Text(
                        "Recent Updates",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 16.0,
    ),
                      ),
                    ),



                InkWell(
                  onTap: () {},
                  child: Container(
                    // alignment: Alignment.centerLeft,
                    margin: const  EdgeInsets.symmetric(vertical: 12),
                    padding:const  EdgeInsets.all(1.5),
                    child: Row(children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                               // color:Color(0xff21bfa6),
                                color: Colors.green,
                                width: 2.5)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              "image/priyanka m.jpg",
                              height: 55,
                              width: 55,
                              fit: BoxFit.cover,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Priyanka",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "Today,05:30am",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),

                InkWell(
                  onTap: () {},
                  child: Container(
                    // alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    padding: const EdgeInsets.all(1.5),
                    child: Row(children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color:Colors.green, width: 2.8)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              "image/image2.jpg",
                              height: 55,
                              width: 55,
                              fit: BoxFit.cover,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const  Text(
                              "Simran",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "Today,05:30am",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    // alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    padding: const EdgeInsets.all(1.5),
                    child: Row(children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.green, width: 2.8)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              "image/myself1.jpg",
                              height: 55,
                              width: 55,
                              fit: BoxFit.cover,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Aashish",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "Yesterday,08:27pm",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    // alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    padding:const  EdgeInsets.all(1.5),
                    child: Row(children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.green, width: 2.8)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              "image/myself4.jpg",
                              height: 55,
                              width: 55,
                              fit: BoxFit.cover,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const  Text(
                              "Mohit",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "Today,09;30am",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    // alignment: Alignment.centerLeft,
                    margin:const  EdgeInsets.symmetric(vertical: 12),
                    padding: const EdgeInsets.all(1.5),
                    child: Row(children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.green, width: 2.8)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              "image/coverBcas.jpg",
                              height: 55,
                              width: 55,
                              fit: BoxFit.cover,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Harsh",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "Yesterday,03:02pm",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),

                const SizedBox(height: 08,),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Viewed Updates",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 16.0,
                    ),
                  ),
                ),
                // for(int i=1;i<4;i++)
                InkWell(
                  onTap: () {},
                  child: Container(
                    // alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    padding: const EdgeInsets.all(1.5),
                    child: Row(children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.grey, width: 2.8)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              "image/priyanka h.jpg",
                              height: 55,
                              width: 55,
                              fit: BoxFit.cover,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:const  [
                            Text(
                              "Shalini",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "Yesterday,05:30am",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    // alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    padding:const  EdgeInsets.all(1.5),
                    child: Row(children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.grey, width: 2.8)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              "image/GOODsence.jpg",
                              height: 55,
                              width: 55,
                              fit: BoxFit.cover,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:const  [
                            Text(
                              "Vivek",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "Yesterday,10:30am",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),

              ],
            ),
          ),
          ),
          Positioned(
            bottom: 15,
            right: 5,
            child: Column(
   crossAxisAlignment: CrossAxisAlignment.end,
       children: [
            FloatingActionButton(

              backgroundColor: Colors.white,
              onPressed:(){} ,
              child: const Icon(Icons.mode_edit,color: Colors.black54),
            ),

         const  SizedBox(height: 15,),
            FloatingActionButton(
              backgroundColor: const Color(0xFF128c7e),
              onPressed:(){} ,
              child: const Icon(Icons.camera_alt,),
            ),

       ],
     ),
          ),
        ],
      ),

//       floatingActionButton:
//      Column(
// //crossAxisAlignment: CrossAxisAlignment.end,
//        children: [
//           FloatingActionButton(
//
//             backgroundColor: Colors.white,
//             onPressed:(){} ,
//             child: const Icon(Icons.mode_edit,color: Colors.black54),
//           ),
//
//        SizedBox(height: 15,),
//           FloatingActionButton(
//             backgroundColor: Color(0xFF128c7e),
//             onPressed:(){} ,
//             child: Icon(Icons.camera_alt,),
//           ),
//
//        ],
//      ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat
//

    );
  }
}
