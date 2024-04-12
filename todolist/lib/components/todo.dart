import "package:flutter/material.dart";
import "package:todolist/components/todoclass.dart";

class todo extends StatefulWidget{
  final todoclass tod;
  final deleteTodo;

  const todo({Key? key,required this.tod,required this.deleteTodo}):super(key: key);

  @override
  State<todo> createState() => _todoState();
}

class _todoState extends State<todo> {
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: ListTile(
        onTap: (){
          print("toggles todo input");
          setState(() {
            widget.tod.iscompleted = !widget.tod.iscompleted;
          });

        },
        contentPadding: EdgeInsets.all(10.0),
        leading: Icon(widget.tod.iscompleted?Icons.check_box:Icons.check_box_outline_blank_outlined),
        title: Text("${widget.tod.todo}",
          style: TextStyle(fontSize: 20.0,decoration:widget.tod.iscompleted?TextDecoration.lineThrough:TextDecoration.none),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Color.fromRGBO(94, 165, 222, 1.0),
        trailing: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(243, 76, 76, 1.0),
            borderRadius: BorderRadius.circular(10.0)
          ),
            child: IconButton(icon:Icon(Icons.delete),iconSize:30.0,onPressed: (){

                widget.deleteTodo(widget.tod.id);
                print("delted");


            },)

        ),
      ),
    );
  }
}