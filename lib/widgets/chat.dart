import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 50,
            width: 50,
            margin: EdgeInsets.only(right: 20),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(90, 170, 150, 1),
              ),
              child: Image.asset(
                'assets/images/chat--v2.png',
                colorBlendMode: BlendMode.dst,
              ),
            ),
          )
        ],
      ),
    );
  }
}
