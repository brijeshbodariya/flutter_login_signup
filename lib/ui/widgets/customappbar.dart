import 'package:flutter/material.dart';
import 'package:flutter_login_signup/constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        height: height / 10,
        width: width,
        padding: const EdgeInsets.only(left: 15, top: 25),
        decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Colors.orange[200]!, Colors.pinkAccent]),
        ),
        child: Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                logs("pop");
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
