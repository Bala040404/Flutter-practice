import 'package:flutter/material.dart';
import "./components/input.dart";


void main(){
  runApp(app());
}


class app extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:input()
    );
  }
}

