import 'package:flutter/material.dart';
import 'package:todolist/components/_alltodos.dart';
import 'package:todolist/components/_searchbox.dart';
import 'package:todolist/components/todoclass.dart';
import './components/_appbar.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(41, 43, 54, 1),
        appBar: appbar(),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Column(
                children: [searchbox(), Alltodos()],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
