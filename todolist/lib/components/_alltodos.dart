import 'package:flutter/material.dart';
import 'package:todolist/components/todo.dart';
import 'package:todolist/components/todoclass.dart';

class Alltodos extends StatefulWidget {
  @override
  _AlltodosState createState() => _AlltodosState();

  static Widget searchbar(Function(todoclass) addtodo){
  final controller = TextEditingController();
    return             Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(81, 83, 85, 0.7),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller:controller,
                decoration: InputDecoration(
                  hintText: "Enter todo",
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                ),
              ),
            ),
            ElevatedButton(
                onPressed:(){
                  todoclass tod = todoclass(todo: controller.text, id: "11", iscompleted: false);
                  addtodo(tod);


                }, child:Icon(Icons.add,color: Colors.black87,))

          ],
        ),
      ),
    );
  }

}

class _AlltodosState extends State<Alltodos> {
  List<todoclass> todos = todoclass.getTodos();

  void delete(String id) {
    setState(() {
      todos.removeWhere((todo) => todo.id == id);
    });
  }

  void addtodo(todoclass todo){
    setState(() {
      todos.add(todo);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 20.0),
          child: ListView(
            children: [
              Text(
                "All todos",
                style: TextStyle(color: Colors.white54, fontSize: 40),
              ),
              ...todos.map((e) => todo(tod: e, deleteTodo: delete)).toList(),
              Alltodos.searchbar(addtodo)

            ],
          ),
        ),
      ),
    );
  }
}
