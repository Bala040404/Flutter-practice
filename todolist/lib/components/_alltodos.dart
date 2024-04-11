import 'package:flutter/material.dart';
import 'package:todolist/components/todo.dart';


Widget todosheading(){
  return Container(
    child: Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0,top: 20.0),
        child: ListView(
          children: [
            Text("All todos",style: TextStyle(color: Colors.white54,fontSize: 40),),
            todo()
          ],
        ),
      ),
    ),
  );
}