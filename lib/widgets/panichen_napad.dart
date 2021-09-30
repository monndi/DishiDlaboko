import 'package:flutter/material.dart';

class PanichenNapad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> techniques = [
      {
        'title': 'Запомти, ќе помине!',
        'text':
            "Го имаш преживеано ова, имаш преживеано многу. Ќе помине, ти си храбар и можеш да го надминеш ова!! Не заборавај да дишaш."
      },
      {
        "title": "Фокусирај се на објект.",
        "text":
            "Погледни на твоjата лева страна, забележи што има и опиши го. Како изгледа и како го доживуваш."
      },
      {
        "title": "5-4-3-2-1 ",
        "text":
            "Погледни во 5 различни објекти.\nСлушни 4 различни звуци.\nДопри 3 објекти.\nОдреди 2 различни миризи.\nКажи едно нешто што можеш да го вкусиш."
      },
    ];
    return Card(
      elevation: 5,
      child: Container(
        width: double.infinity,
        height: 500,
        // margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(color: Colors.grey[100]),
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: techniques.map((techniq) {
            return Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      (techniq['title'] as String),
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        backgroundColor: Colors.blue[300],
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      elevation: 3,
                      color: Colors.green[400],
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 200,
                        width: 360,
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          (techniq['text'] as String),
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // ],
              // ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
