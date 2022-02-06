import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer({required this.selectHandler, required this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      // width: double.infinity,
      child: ElevatedButton(
        // ignore: prefer_const_constructors
        style: ButtonStyle(
          // foregroundColor: MaterialStateProperty.resolveWith<Color>(
          //   // text color
          //   (Set<MaterialState> states) =>
          //       states.contains(MaterialState.disabled)
          //           ? Colors.white
          //           : Colors.white,
          // ),
          // backgroundColor: MaterialStateProperty.resolveWith<Color>(
          //   // background color    this is color:
          //   (Set<MaterialState> states) =>
          //       states.contains(MaterialState.disabled)
          //           ? Colors.red
          //           : Colors.red,
          // ),
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.all(20),
          ),
        ),
        child: Text(answerText),
        onPressed: selectHandler as void Function(),
      ),
    );
  }
}
