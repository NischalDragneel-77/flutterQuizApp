import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //final denotes variable that won't be changed inside class once initialized by constructor
  final String questionText;

  Question(this.questionText); //constructor

  @override //represents intentional override of method of a parent class
  Widget build(BuildContext context) {
    //build method returns an widget(object)
    return Container(
      width: double.infinity, //takes full width of screen
      //class name followed by . allows multiple constructor example as EdgeInsest.only() && EdgeInsets.all()
      margin: EdgeInsets.all(10), //inserts margin of 10 to all side
      //denotes widget inside container, container can have only one child
      child: Text(
        questionText, //string, what we want to text widget to display
        style: TextStyle(fontSize: 28), //styl e of text
        textAlign: TextAlign.center, //aligns text to center
      ),
    );
  }
}
