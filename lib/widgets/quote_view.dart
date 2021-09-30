import 'dart:math';

import 'package:flutter/material.dart';

class Quote extends StatefulWidget {
  final List<String> _quotes = [
    "„Кога вдишувам, јас го смирувам своето тело. Кога издишувам, се насмевнувам, живеејќи во сегашниот момент. Свесен сум дека тоа е прекрасен момент. Сегашниот момент е прекрасен момент.“\nТач Нат Кан",
    "„Нема потреба да брзате. Нема потреба да блескате. Нема потреба да бидете никој освен себе.“\nВирџинија Вулф",
    "„Има само еден начин до среќата, а тоа е да престанете да се грижите за нештата што се надвор од моќта на нашата волја.“\nЕпиктетус",
    "„Направете што можете, со она што го имате, онаму каде што сте.“\nТеодор Рузвелт",
    "„Ако не можеш да леташ, трчај. Ако не можеш да трчаш, оди. Ако не можп да одиш, ползи, но со сите средства, продолжи да се движиш.“\nМартин Лутер Кинг",
  ];

  final Random rnd = new Random();

  int getRandomQuote(int length) {
    return rnd.nextInt(length);
  }

  @override
  State<Quote> createState() => _QuoteState();
}

class _QuoteState extends State<Quote> {
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   decoration: BoxDecoration(
    //     shape: BoxShape,
    //     color: Colors.white,
    //   ),
    //   width: double.infinity,
    //   height: 100,
    //   margin: EdgeInsets.symmetric(horizontal: 20),
    //   child: Text("TExt"),
    // );
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Align(
        alignment: Alignment(0.0, 0.0),
        child: SizedBox(
          width: double.infinity,
          height: 130,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(3.0, 6.0),
                      blurRadius: 10.0),
                ],
              ),
              padding: EdgeInsets.all(10),
              child: Text(
                widget
                    ._quotes[widget.getRandomQuote(widget._quotes.length - 1)],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
