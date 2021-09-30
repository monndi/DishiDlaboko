import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 50,
            height: 50,
            child: Image.asset(
              'assets/images/logo1.png',
              colorBlendMode: BlendMode.dst,
            ),
          ),
          Card(
            elevation: 10,
            color: Colors.transparent,
            child: Text(
              "Диши Длабоко!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontStyle: FontStyle.italic,
                fontFamily: 'Quicksand',
                color: Colors.black,
              ),
            ),
          ),
          // CircleAvatar(
          //   backgroundColor: Colors.white,
          //   radius: 40,
          //   child: Image.asset(
          //     'assets/images/user.png',
          //     fit: BoxFit.cover,
          //   ),
          // ),
          // new Container(
          //   width: 80,
          //   height: 80,
          //   decoration: new BoxDecoration(
          //     shape: BoxShape.circle,
          //     image: new DecorationImage(
          //       fit: BoxFit.fill,
          //       image: NetworkImage(
          //           'https://www.mcicon.com/wp-content/uploads/2021/01/People_User_1-copy-4.jpg'),
          //     ),
          //   ),
          // ),
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[100],
              border: Border.all(color: Colors.black87),
            ),
            padding: EdgeInsets.all(15),
            child: Image.asset("assets/images/user_icon.png"),
          ),
        ],
      ),
    );
  }
}
