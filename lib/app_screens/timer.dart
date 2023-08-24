import 'package:flutter/material.dart';
import 'dart:async';
import 'package:numberpicker/numberpicker.dart';
class timerG extends StatefulWidget {


  @override
  State<timerG> createState() => _timerGState();
}

class _timerGState extends State<timerG> with TickerProviderStateMixin {
  TabController? tb;
  String texttodisplay = "";
  int hour = 0;
  int min = 0;
  int sec = 0;
  bool started = true;
  bool stopped = true;
  var timefortimer;
  bool canceltimer=false;
  final dur=const Duration(seconds: 1);

  @override
  void initState() {
    tb = TabController(
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  void start() {
    setState(() {
      started = false;
      stopped = false;
    });
    timefortimer = ((hour * 60*60) + (min * 60) + sec);
    Timer.periodic(dur, (Timer t) {
      setState(() {
        if (timefortimer < 1 || canceltimer==true) {
          t.cancel();
        }
        else {
          timefortimer = timefortimer - 1;
          texttodisplay = timefortimer.toString();
        }
      }
      );
    }
    );
  }

  void stop() {
    setState(() {
      started = true;
      stopped = true;
      canceltimer=true;
    }
    );
    }

    Widget timer() {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(flex: 6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.only(bottom: 10.0),
                          child: Text("HH",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                      ),

                      NumberPicker(

                          minValue: 0,
                          maxValue: 23,
                          value: hour,
                          itemWidth: 60.0,
                          onChanged: (val) {
                            setState(() {
                              hour = val;
                            });
                          }
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.only(bottom: 10.0),
                          child: Text("MM",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),)
                      ),

                      NumberPicker(
                          minValue: 0,
                          maxValue: 60,
                          value: min,
                          itemWidth: 60.0,
                          onChanged: (val) {
                            setState(() {
                              min = val;
                            });
                          }
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.only(bottom: 10.0),
                          child: Text("SS",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                      ),

                      NumberPicker(
                          minValue: 0,
                          maxValue: 60,
                          value: sec,
                          itemWidth: 50.0,
                          onChanged: (val) {
                            setState(() {
                              sec = val;
                            });
                          }
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(flex: 1,
              child: Text(texttodisplay,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                ),),
            ),
            Expanded(flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: started ? start : null,
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.green,
                   // disabledColor: Colors.white60,
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(15.0)),
                  // splashColor: Colors.white60,
                   padding: EdgeInsets.symmetric(
                     horizontal: 30.0,
                     vertical: 12.0,
                 ),
                    ),
                    child: Text("START",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  ElevatedButton(onPressed: stopped ? null : stop,
                   style: ElevatedButton.styleFrom(
                     backgroundColor:Colors.redAccent,
                     //splashColor: Colors.blue,
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(15.0)),
                     //  disabledColor: Colors.white60,
                     padding: EdgeInsets.symmetric(
                       horizontal: 30.0,
                       vertical: 12.0,
                   ),
                    ),
                    child: Text("STOP",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  ElevatedButton(onPressed:(){
                    setState((){
                      Navigator.push(context,MaterialPageRoute(builder:(context)=>timerG()));
                    });
                  },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:Colors.black,
                    //  splashColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      //  disabledColor: Colors.white60,
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 12.0,
                    ),

                    ),
                    child: Text("RESET",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      );
    }

    bool startispressed=true;
  bool stopispressed=true;
  bool resetispressed=true;
  String stoptimedisplay=" 00:00:00";
  var swatch=Stopwatch();
  final dura=const Duration( seconds: 1);
  void keeprunning(){
    if(swatch.isRunning){
      starttimer();

    }
    setState( (){
      stoptimedisplay=swatch.elapsed.inHours.toString().padLeft(2,"0")+":"
                     +(swatch.elapsed.inMinutes%60).toString().padLeft(2,"0")+ ":"
                     +(swatch.elapsed.inSeconds).toString().padLeft(2,"0")
      ;
    });
  }
  void starttimer(){
    Timer(dura,keeprunning);
  }
  void startstopwatch(){
    setState( (){
      stopispressed=false;
      startispressed=false;
    });
    swatch.start();
    starttimer();
  }
  void stopstopwatch(){
    setState((){
      stopispressed=true;
      resetispressed=false;
    });
    swatch.stop();
  }
  void resetstopwatch(){
    setState((){
      startispressed=true;
      resetispressed=true;
    });
    swatch.reset();
    stoptimedisplay=" 00:00:00";
  }

    Widget stopwatch(){
    return Container(
      child: Column(
        children: [
          Expanded(
              flex:6,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              stoptimedisplay,
            style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          ),
          Expanded(flex:4,
              child:Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(

                      onPressed: stopispressed ? null : stopstopwatch,
                     style: ElevatedButton.styleFrom(
                       backgroundColor:Colors.red,
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(15.0)),
                      // splashColor: Colors.white60,
                       padding: EdgeInsets.symmetric(
                         horizontal: 40.0,
                         vertical: 15.0,
                     ),
                      ),
                      child: Text("STOP",
                      style: TextStyle(fontSize: 20.0,
                      color: Colors.white,),),
                    ),
                    ElevatedButton(
                      onPressed:resetispressed ? null :resetstopwatch,
                     style: ElevatedButton.styleFrom(
                       backgroundColor:Colors.black,
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(15.0)),
                       //splashColor: Colors.white60,
                       padding: EdgeInsets.symmetric(
                         horizontal: 40.0,
                         vertical: 15.0,
                     ),
                      ),
                      child: Text("RESET",
                        style: TextStyle(fontSize: 20.0,
                          color: Colors.white,),),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed:startispressed ?  startstopwatch: null,
                style: ElevatedButton.styleFrom(
                  backgroundColor:Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  //splashColor: Colors.white60,
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 15.0,
                ),
                  ),
                  child: Text("START",
                    style: TextStyle(fontSize: 20.0,
                      color: Colors.white,),),
                ),

              ],
            ),
          ),
          ),
        ],
      ),
    );
    }







    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Watch"),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Text("Timer"),
              Text("Stopwatch"),
            ],
            controller: tb,
            labelStyle: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic
            ),
           // unselectedLabelColor: Colors.white60,
          ),
        ),
        body: TabBarView(
          children: [
            timer(),


            stopwatch(),
          ],
          controller: tb,
        ),
      );
    }
  }
