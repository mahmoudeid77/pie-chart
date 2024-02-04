import 'dart:math';

import 'package:flutter/material.dart';

class PieChart extends CustomPainter
{
  final List<Category> categoris;
  final double width;//how thick the cirle is

  PieChart({super.repaint, required this.categoris, required this.width});
  @override
  void paint(Canvas canvas, Size size) {
    Offset center =Offset(size.width/2, size.height/2);
    Offset radius = Offset(size.width/2, size.height/2);

    var paint = Paint()
    ..style=PaintingStyle.stroke
    ..strokeWidth=width/2;
    double total = 0;
    categoris.forEach((expense) => total += expense.amount);//total amount { })
  double startRadian=-pi /2;
  for(var i=0; i<categoris.length; i++)
  {
    final currentCategory=categoris[i];
    final sweepRadian = currentCategory.amount/total *2*pi;

    paint.color=kColors[i % categoris.length];
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: size.width / 2)
      , startRadian, sweepRadian, false, paint);
      startRadian += sweepRadian;
  }



  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true; 
    
  
}
class Category {
   final String name;
   final double amount;

  Category({required this.name, required this.amount});
  
}

final kCategories =[

Category(name: 'groceries', amount: 500.00),
Category(name: 'online Shopping', amount: 150.00),
Category(name: 'Eating out', amount: 90.00),
Category(name: 'bilis', amount: 90.00),
Category(name: 'subscription', amount: 40.00),
Category(name: 'fees', amount: 20.00),
];
final kColors =
[
  Color(0xff347AE2),
  Color(0xffFF9500),
  Color(0xffE6EDFF),
  Color(0xff34C759),
  Color(0xffFF3B30),
  Color(0xff123456)

];