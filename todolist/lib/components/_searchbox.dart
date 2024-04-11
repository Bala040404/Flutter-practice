import "package:flutter/material.dart";

Widget searchbox(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(81, 83, 85, 0.7),
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(15.0),
          hintText: "search",
          hintStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.8),fontSize: 20.0),
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search,color: Colors.white,)

      ),
    ),
  );
}