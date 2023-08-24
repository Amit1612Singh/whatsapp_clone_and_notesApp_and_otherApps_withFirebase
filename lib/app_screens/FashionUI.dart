import 'package:flutter/material.dart';


class FashionUI extends StatefulWidget {
  const FashionUI({Key? key}) : super(key: key);

  @override
  State<FashionUI> createState() => _FashionUIState();
}

class _FashionUIState extends State<FashionUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Stack(
        children: [
          Image.asset("image/a2.jpg",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,),
//           Image.network("https://i.pinimg.com/originals/3b/d6/5c/3bd65c478dfdfb1ce7bc33f9f8f2f84c.jpg",
//             height: double.infinity,
//             width: double.infinity,
// fit: BoxFit.cover,
//           ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                height: 600,
                width: double.infinity,
              // color: Colors.red,
              decoration: BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0x00f5f5f5),Color(0xfff5f5f5)],)),
            ),
          ),
       SafeArea(child:   Container(
         padding: EdgeInsets.all(10),
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                    onTap:(){
                      Navigator.pop(context);
                    },
                        child: Icon(Icons.arrow_back_ios_new_outlined,)),
                    Icon(Icons.share,)
                  ],
                ),
                Column(

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Clasic",
                       style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontStyle: FontStyle.italic), ),
                        Text("\$204",
                            style:TextStyle(fontWeight: FontWeight.w500,fontSize: 24,
                                fontStyle: FontStyle.italic,decoration: TextDecoration.lineThrough)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Cotton Jacket",
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontStyle: FontStyle.italic), ),
                        Text("\$208", style:TextStyle(fontWeight: FontWeight.w500,fontSize: 24,
                            fontStyle: FontStyle.italic,decoration: TextDecoration.lineThrough)),
                      ],
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star,color: Colors.white,shadows: [Shadow(color: Colors.black,blurRadius: 2)]),

                      ],
                    ),
                    Row(children: [
                      Text("Colors",
                          style:TextStyle(fontWeight: FontWeight.w500,fontSize: 24,
                            color: Colors.red,
                            fontStyle: FontStyle.italic,))
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 30,
                                width: 30,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                boxShadow:[BoxShadow(color: Colors.black,blurRadius: 1,spreadRadius: 2)],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  boxShadow:[BoxShadow(color: Colors.grey,blurRadius: 1,spreadRadius: 2)],
                                  color: Colors.grey,
                                  shape: BoxShape.circle
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  boxShadow:[BoxShadow(color: Colors.grey,blurRadius: 1,spreadRadius: 2)],
                                  color: Colors.deepOrangeAccent,
                                  shape: BoxShape.circle
                              ),
                            ),
                            SizedBox(width: 10,),

                          ],
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              boxShadow:[BoxShadow(color: Colors.grey,blurRadius: 1,spreadRadius: 2)],
                              color: Colors.white,
                              shape: BoxShape.circle
                          ),
                          child: Icon(Icons.heart_broken_rounded,color: Colors.red,size: 20),
                        ),
                      ],
                    ),
SizedBox(height: 8,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Flexible(child: Text("This is new modern dress with new designe and colors coding,streachable,and easy for wearing etc........",
                       style: TextStyle(fontStyle: FontStyle.italic,fontSize: 17),)),
                       Container(
                         alignment: Alignment.center,
                         height: 50,
                         width: 50,
                         decoration: BoxDecoration(
                             boxShadow:[BoxShadow(color: Colors.grey,blurRadius: 1,spreadRadius: 2)],
                             color: Colors.black,
                             shape: BoxShape.circle
                         ),
                         child: Icon(Icons.shopping_cart,color: Colors.white,size: 20),
                       ),
                     ],
                   ),
                    SizedBox(height: 20,),
                  ],
                ),

              ],
            ),
          )
       )
        ],
      ),

    );
  }
}
