import 'package:amit/app_screens/FashionUI.dart';
import 'package:flutter/material.dart';
import 'dart:async';
class imageboth extends StatefulWidget {
  const imageboth({Key? key}) : super(key: key);

  @override
  State<imageboth> createState() => _imagebothState();
}

class _imagebothState extends State<imageboth> {
  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) =>AlertDialog(
        title: Text('Warning',),
        content: Text("Are you sure to Exit ?"),
        actions: [
          TextButton(onPressed:(){
            Navigator.of(context).pop(true);
          },
            child:Text("Yes"),
          ),
          TextButton(onPressed:(){
            Navigator.of(context).pop(false);
          },
            child:Text("NO"),
          ),
        ],
      ),
    )
    );
  }

  Icon cusIcon=Icon(Icons.search,color: Colors.black,);
  Widget custext=Text("Solid Shirt Style...",
    style: TextStyle(
      fontStyle: FontStyle.italic,
      fontSize: 17.0,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onWillPop,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
leading: InkWell(
  onTap: (){
    Navigator.pop(context);
  },
    child: Icon(Icons.arrow_back,color: Colors.black)),

          title:custext,
          backgroundColor:Colors.white,
          elevation: 0,
          actions: [
           SizedBox(width: 5,),
            IconButton(
              onPressed: (){
                setState( (){
                  if(this.cusIcon.icon==Icons.search){
                    this.cusIcon= Icon(Icons.cancel,color: Colors.black,);
                //    this.cusIcon.icon==Icons.cancel;
                    this.custext=TextField(
                      textInputAction: TextInputAction.go,
                      decoration: InputDecoration(
                        border:InputBorder.none,
                        hintText:"Search here",
                      ),
                      style:TextStyle(color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontSize: 20.0),);
                  }
                  else{
                    this.cusIcon=Icon(Icons.search,color: Colors.black,);
                    this.cusIcon=Icon(Icons.cancel,color: Colors.black,);

                    this.custext=Text("Solid Shirt Style...",
                      style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    );


                  }


                }
                );
              },
              icon:cusIcon,
            ),
            IconButton(
                onPressed: (){},
                icon:Icon(Icons.more_vert,color: Colors.black,)
            ),
          ],

        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10,top: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image.asset("image/a1.jpg",height: 300,),
                      // Image.network("https://baazarkolkata.com/old(12.08.2020)/wp-content/uploads/2019/04/d5.jpg",
                      //   height: 300,),
                      Positioned(
                        right: -20,
                        top: 20,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            boxShadow:[
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 2,
                              )
                            ] ,
                            color: Colors.white,
                              shape:BoxShape.circle ),
                          child: Icon(Icons.heart_broken,color: Colors.pinkAccent),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Divider(thickness: 2,),
                SizedBox(height: 10,),
                Text("Solid Shirt Style TShirt",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
                SizedBox(height: 10,),
                Container(
decoration: BoxDecoration(
  border: Border.all(color: Colors.black),
                     borderRadius: BorderRadius.circular(20),
  color: Colors.grey.withOpacity(0.3),),
                  padding: EdgeInsets.all(5),

                  child: Text("Special Price",
                      style: TextStyle(color: Colors.red,fontSize: 15,fontStyle: FontStyle.italic)),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                  Text("\$30",style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold
                  )),
                    SizedBox(width:3),
                    Text("\$60",
                      style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold,decoration:TextDecoration.lineThrough),),
                    SizedBox(width:3),
                    Text("50% off", style: TextStyle(color: Colors.red,fontSize: 18, ))
                ],),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(

                      child: Padding(
                        padding: const EdgeInsets.all(6.0),

                        child: Row(
                          children: [
                            Text("4.3 ",style:TextStyle(color: Colors.white),),
                            Icon(Icons.star,color: Colors.white,size: 14,)
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(color: Colors.red,
                    // border: Border.all(width: 5),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                     SizedBox(width: 4),
                    Text("2814 rating",style:TextStyle(color: Colors.grey),)
                  ],
                ),
                Divider(thickness: 4,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("SIZE",style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                         borderRadius: BorderRadius.circular(40),
                           border: Border.all(width: 1,color: Colors.black54,),

                        ),
                        child: InkWell(
                          onTap: (){},
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text("SIZE CHART",
                                style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height:10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: TextButton(onPressed:(){},
                        style:TextButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),

                          child:Text("ADD TO BAG",
                              style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold,)),),
                    ),
                     Expanded(
                       child: TextButton(onPressed:(){},
                         style: TextButton.styleFrom(
                           backgroundColor:   Colors.red,
                         ),

                          child:Text("BUY NOW",
                              style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white)),),
                     ),



                  ],
                ),
                SizedBox(height: 15,),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                      onPressed:(){
                    Navigator.push(context,
                        MaterialPageRoute(builder:(context)=>FashionUI()));
                  },
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                       // splashColor: Colors.white60,
                        backgroundColor: Colors.cyan,
                      ),

                      child: Text("Press to move\nNext Page >",)),
                ),

              ],
            ),
          ),

        ),
        // floatingActionButton:Container(
        //   alignment: Alignment.centerRight,
        //   child: FlatButton(onPressed:(){
        //     Navigator.push(context,
        //         MaterialPageRoute(builder:(context)=>FashionUI()));
        //   },
        //       color: Colors.lime,
        //       child: Text("Press to move\nNext Page >",)),
        // ),
        // floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked ,
       
      ),
    );
  }
}
