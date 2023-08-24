import 'package:flutter/material.dart';
import 'dart:async';

class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
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
 // @override
  int n1=0;
  int n2=0;
  String result="";
  String texttodisplay="";
  String? operatortoperform;

  void buttonClick(String num ) {
    if (num == "Reset") {
      texttodisplay = "";
      result = "";
      n1 = 0;
      n2 = 0;
    }
    else if (num == "+" || num == '-' || num == "X" || num == "/") {
      n1 = int.parse(texttodisplay);
      result = "";
      operatortoperform = num;
    }
    else if (num == "=") {
      n2 = int.parse(texttodisplay);
      if (operatortoperform == "+") {
        result = (n1 + n2).toString();
      }
      if (operatortoperform == "-") {
        result = (n1 - n2).toString();
      }
      if (operatortoperform == "X") {
        result = (n1 * n2).toString();
      }
      if (operatortoperform == "/") {
        result = (n1 / n2).toString();
      }
    }
    else {
      result = int.parse(texttodisplay + num).toString();
    }
    setState(() {
      texttodisplay=result;
    }
    );
  }

  Widget mybutton(String num){
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(15.0),
          elevation: 10.0,
        ),

      onPressed: ()=>buttonClick(num),
      child:Text("$num",
        style: TextStyle(
          fontSize: 24.0,
          fontWeight:FontWeight.bold,
        ),
      ),
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:_onWillPop,
      child: Scaffold(
        appBar:AppBar (
          leading:IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.keyboard_return),
          ),

          title: Text("CALCULATOR"),
        ),
        body: Container(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(child:Container(
                padding: EdgeInsets.all(25.0),
                alignment: Alignment.bottomRight,
                child: Text("$texttodisplay",
                  style: TextStyle(
                    fontSize: 75.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ),
              ),
              Row(
                children: [
                  mybutton("9"),
                  mybutton("8"),
                  mybutton("7"),
                  mybutton("+"),
                ],
              ),
              Row(
                children: [
                  mybutton("6"),
                  mybutton("5"),
                  mybutton("4"),
                  mybutton("-"),
                ],
              ),
              Row(
                children: [
                  mybutton("3"),
                  mybutton("2"),
                  mybutton("1"),
                  mybutton("X"),
                ],
              ),
              Row(
                children: [
                  mybutton("Reset"),
                  mybutton("0"),
                  mybutton("="),
                  mybutton("/"),
                ],
              ),
            ],
          ),
        ),
        // bottomNavigationBar:BottomAppBar(color: Colors.greenAccent[100],
        //   child:
        //   Row(children: [
        //     Expanded(
        //         child: SizedBox(
        //           height: 60.0,
        //           child:IconButton(iconSize: 30.0,
        //             splashColor: Colors.redAccent,
        //             onPressed:(){},
        //             icon: Icon(Icons.arrow_back_ios_rounded),tooltip: "back",
        //           ) ,
        //         )
        //     ),
        //     Expanded(
        //         child: SizedBox(
        //           height: 60.0,
        //           child:IconButton(iconSize: 30.0,
        //             splashColor: Colors.redAccent,
        //             onPressed:(){},
        //             icon: Icon(Icons.search,),tooltip: "search",
        //           ) ,
        //         )
        //     ),
        //
        //     Expanded(
        //       child: SizedBox(
        //         height: 60.0,
        //         child:
        //         IconButton(iconSize: 20.0,
        //           splashColor: Colors.redAccent,
        //           onPressed:(){},
        //           icon: Icon(Icons.message,),tooltip: "message",
        //         ),
        //       ),
        //     ),
        //
        //   ],
        //
        //   ),
        // ),

      ),
    );

  }
}

