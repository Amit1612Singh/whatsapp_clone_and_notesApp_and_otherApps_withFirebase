import 'package:flutter/material.dart';

class dashboardPage extends StatefulWidget {
  const dashboardPage({Key? key}) : super(key: key);

  @override
  State<dashboardPage> createState() => _dashboardPageState();
}

class _dashboardPageState extends State<dashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("DashBoard",style: TextStyle(
          fontSize: 20,fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
