import "package:flutter/material.dart";


class input extends StatefulWidget{
  @override
  inputstate createState(){
    return inputstate();
  }
}

class inputstate extends State<input>{
  List quotes = [];
  final textcontroller = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0,50.0,20.0,0),
        child: Column(
          children: [
            TextField(
              controller: textcontroller,
              decoration: InputDecoration(
                hintText: "Enter sentence "
              ),
            ),
            TextButton(onPressed: (){
              print(textcontroller.text);
              setState(() {
                quotes.add(textcontroller.text);
              });
              print(quotes);
            }, child: Text("Add quote")),
            Expanded(
              child: ListView.builder(
                itemCount: quotes.length,
                itemBuilder: (context,position){
                  return Card(
                    child: Text(quotes[position]),
                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}