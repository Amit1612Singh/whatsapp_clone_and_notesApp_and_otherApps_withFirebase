import "package:flutter/material.dart";
import 'dart:async';
class stopwatch extends StatefulWidget {
  const stopwatch({Key? key}) : super(key: key);

  @override
  State<stopwatch> createState() => _stopwatchState();
}

class _stopwatchState extends State<stopwatch> {
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


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop:_onWillPop,
    child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("STOPWATCH"),
      ),
      body: Container(
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
                    backgroundColor: Colors.red,

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
                        //  splashColor: Colors.white60,
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
                      // splashColor: Colors.white60,
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
      )




    ),
    );


  }
}
