import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomBottomAppBar extends StatelessWidget {
  final Function returnHome;
  final bool retHome;
  final String sosNumber;
  Function openRelax;
  _launchCaller(sosNumber) async {
    var url = "tel:${sosNumber}";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  CustomBottomAppBar(
      this.returnHome, this.retHome, this.sosNumber, this.openRelax);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment(0.0, 0.0),
        child: SizedBox(
          width: double.infinity,
          height: 110,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(36.0),
            child: Container(
              // margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(3.0, 6.0),
                      blurRadius: 10.0),
                ],
              ),
              padding: EdgeInsets.all(3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[100],
                          border: Border.all(color: Colors.black87),
                        ),
                        padding: EdgeInsets.all(20),
                        child: Image.asset("assets/images/doma.png"),
                      ),
                      onTap: () {
                        returnHome();
                      },
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[100],
                          border: Border.all(color: Colors.black87),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Image.asset("assets/images/sos.png"),
                      ),
                      onTap: () {
                        _launchCaller(sosNumber);
                      },
                    ),
                  ),
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[100],
                        border: Border.all(color: Colors.black87),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Image.asset("assets/images/Relax.png"),
                    ),
                    onTap: () {
                      openRelax();
                    },
                    hoverColor: Colors.green,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
