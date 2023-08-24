import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import "package:flutter/material.dart";
Widget notesCard(Function()? onTap,QueryDocumentSnapshot doc){
  return InkWell(
    onTap:onTap,
    child:Container(
      padding: EdgeInsets.all(8),
      margin:EdgeInsets.all(8),
      decoration: BoxDecoration(
      //  color:colors[Random().nextInt(5)],
      ),
    )
  );
}