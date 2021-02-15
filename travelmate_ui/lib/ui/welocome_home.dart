import 'package:flutter/material.dart';

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
          Text(
            "Hi",
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.blue),
          ),

          Text(
            "Hi",
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.blue),
          ),

          Expanded(
            child: Text(
              "Hi",
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.blue),
            ),
          ),

          Container(
            color: Colors.deepOrange,
            alignment: Alignment.bottomLeft,
            child: Text(
              "Hi",
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.blue),
            ),

          )


        ],
      ),
    );
  }

}