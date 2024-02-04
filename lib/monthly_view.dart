import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/categoris_row.dart';
import 'package:flutter_application_1/pie_chart.dart';

class MonthlyView extends StatelessWidget {
  const MonthlyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
          child: Column(
        children: [
          Spacer(),
          SizedBox(
            height: 400,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Monthly expenses',
                      style: TextStyle(fontSize: 30),
                    ),
                    Expanded(
                        child: Row(
                      children: [
                        CategoriesRow(),
                        Expanded(
                            flex: 4,
                            child: Stack(
                              children:[ Center(
                                child: 
                                  CustomPaint(
                                    child: Center(),
                                    foregroundPainter: PieChart(
                                        categoris: kCategories, width: 150),
                                  )
                                
                                ,
                              ),
                              Positioned(

                                top: 150,
                                left: 70,
                                child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  
                                  shape: BoxShape.circle,
                                  color: Colors.yellow
                                ),
                                child: Text('500 ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

                              ))
                              ]
                            )
                            ),
                      ],
                    ))
                  ]),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      )),
    );
  }
}
