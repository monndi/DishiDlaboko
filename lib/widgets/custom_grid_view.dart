import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomGridView extends StatelessWidget {
  final Function dishiDlaboko;
  final Function panichenNapad;
  CustomGridView(this.dishiDlaboko, this.panichenNapad);

  _launchURL() async {
    const url = "https://www.razgovor.mk/";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              child: Card(
                elevation: 3,
                child: Container(
                  height: 170,
                  width: 100,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(4),
                  child: Column(
                    children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Image.asset('assets/images/anksioznost.png')),
                      Flexible(
                        fit: FlexFit.tight,
                        child: Text(
                          "Што е\nанксиозност?",
                          style: TextStyle(
                            color: Colors.blue[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // color: Colors.teal[100],
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            InkWell(
              child: Card(
                elevation: 3,
                child: Container(
                  height: 170,
                  width: 100,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(4),
                  child: Column(
                    children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child:
                              Image.asset('assets/images/panicniNapadi.png')),
                      Flexible(
                        fit: FlexFit.tight,
                        child: Text(
                          "Паничен\nнапад!!",
                          style: TextStyle(
                            color: Colors.blue[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // color: Colors.teal[100],
                  color: Colors.white,
                ),
              ),
              onTap: () {
                panichenNapad();
              },
            ),
            InkWell(
              child: Card(
                elevation: 3,
                child: Container(
                  height: 170,
                  width: 100,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(4),
                  child: Column(
                    children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Image.asset(
                              'assets/images/KakoDaSiPomogneme.png')),
                      Flexible(
                        fit: FlexFit.tight,
                        child: Text(
                          "Како да си\nпомогнеме?",
                          style: TextStyle(
                            color: Colors.blue[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // color: Colors.teal[100],
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              child: Card(
                elevation: 3,
                child: Container(
                  height: 170,
                  width: 100,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(4),
                  child: Column(
                    children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Image.asset('assets/images/psiholozi.png')),
                      Flexible(
                        fit: FlexFit.tight,
                        child: Text(
                          "Психолози",
                          style: TextStyle(
                            color: Colors.blue[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // color: Colors.teal[100],
                  color: Colors.white,
                ),
              ),
              onTap: _launchURL,
            ),
            InkWell(
              child: Card(
                elevation: 3,
                child: Container(
                  height: 170,
                  width: 100,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(4),
                  child: Column(
                    children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Image.asset('assets/images/forum.jpg')),
                      Flexible(
                        fit: FlexFit.tight,
                        child: Text(
                          "Совети \nи искуства",
                          style: TextStyle(
                            color: Colors.blue[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // color: Colors.teal[100],
                  color: Colors.white,
                ),
              ),
            ),
            InkWell(
              child: Card(
                elevation: 3,
                child: Container(
                  height: 170,
                  width: 100,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child:
                              Image.asset('assets/images/dishi_dlaboko.jpg')),
                      Flexible(
                        fit: FlexFit.tight,
                        child: Text(
                          "Диши Длабоко!",
                          style: TextStyle(
                            color: Colors.blue[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // color: Colors.teal[100],
                  color: Colors.white,
                ),
              ),
              onTap: () {
                dishiDlaboko();
              },
            ),
          ],
        ),
      ],
    );
  }
}
