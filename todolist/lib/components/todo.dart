import "package:flutter/material.dart";

class todo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(

      child: ListTile(
        leading: Icon(Icons.check_box),
        title: Text("todo",
          style: TextStyle(fontSize: 20.0,decoration:TextDecoration.lineThrough),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.blue,
      ),
    );
  }
}