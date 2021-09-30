import 'dart:collection';

import 'package:flutter/material.dart';

class DishiDlaboko extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> techniques = [
      {
        'title': 'Воспоставување контрола',
        'text':
            "Ритмичко дијафрагмално дишење низ нос\n\n- Исклучено е адбоминално, високо-градно, испрекинато, забрзано дишење\n- Пракса на бавно, римичко дишење\n- Колку вдишуваме -толку издишуваме\n- Нормален ритам 10-12 циклуса во рок од 1 мин."
      },
      {
        "title": "Да се биде во контрола",
        "text":
            "Релаксирачко, ритмичко дишање\n\n- Препознавање на раните знаци на вознемиреност, нервоза, возбуда\n- При осет на првичните симптоми, знаци на почеток, да воспоставите дијафрагмално дишење\n- Еден циклус би требало да трае 6 секунди. Вдишување 3 секунди, пауза од 1 секунда, издишување 3 секунди, пауза од 1 секунда. Ова ќе ви овозможи нормален дишен ритам од 10 циклуси/секунди.\n- Кажете  ги зборовите “опушти се , релаксирај се” на крајот од секое издишување\n- Не се откажувајте веднаш ако не можете да го воспоставите ваквиот тип на дишење, продолжете, со тек на времето тоа ќе стане дел од вашиот секојдневен живот."
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
                  children: [
                    Text(
                      (techniq['title'] as String),
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        backgroundColor: Colors.indigo[100],
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      elevation: 3,
                      color: Colors.indigo[500],
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 360,
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
