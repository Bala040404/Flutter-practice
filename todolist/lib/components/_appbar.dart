import "package:flutter/material.dart";

AppBar appbar(){
    return AppBar(

      title: Text("Todos",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 30.0),),
      centerTitle: true,
      backgroundColor: Color.fromRGBO(41,43,54,1),
      elevation: 0,

    );
  }