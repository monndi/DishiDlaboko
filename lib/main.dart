import './widgets/dishi_dlaboko.dart';
import './widgets/panichen_napad.dart';

import './widgets/relax_view.dart';
import 'package:flutter/material.dart';
import './widgets/custom_app_bar.dart';
import './widgets/custom_grid_view.dart';
import './widgets/chat.dart';
import './widgets/quote_view.dart';
import './widgets/bottom_app_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dishi dlaboko',
      theme: ThemeData(
        primarySwatch: Colors.green,
        backgroundColor: Color.fromRGBO(105, 197, 171, 1),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var retHome = true;
  var sosNumber = '+38978888888';
  void _returnHome() {
    setState(() {
      // retHome == true ? retHome = false : retHome = true;
      retHome = true;
      relaxFlag = false;
      dishiDlabokoFlag = false;
      panichenFlag = false;
      print(retHome);
    });
  }

  var relaxFlag = false;
  var dishiDlabokoFlag = false;
  var panichenFlag = false;

  void _relax() {
    setState(() {
      relaxFlag = true;
      retHome = false;
      dishiDlabokoFlag = false;
      panichenFlag = false;
    });
  }

  void _dishiDlaboko() {
    setState(() {
      relaxFlag = false;
      retHome = false;
      dishiDlabokoFlag = true;
      panichenFlag = false;
    });
  }

  void _panichenNapad() {
    setState(() {
      relaxFlag = false;
      retHome = false;
      dishiDlabokoFlag = false;
      panichenFlag = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomAppBar(),
            relaxFlag ? Relax() : Center(),
            retHome ? CustomGridView(_dishiDlaboko, _panichenNapad) : Center(),
            retHome ? Chat() : Center(),
            retHome ? Quote() : Center(),
            dishiDlabokoFlag ? DishiDlaboko() : Center(),
            panichenFlag ? PanichenNapad() : Center(),
            CustomBottomAppBar(_returnHome, retHome, sosNumber, _relax),
          ],
        ),
      ),
    );
  }
}
