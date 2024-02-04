import 'package:flutter/material.dart';
import 'package:flutter_application_1/pie_chart.dart';
class CategoriesRow extends StatelessWidget {
  const CategoriesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(flex: 3, child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for(var category in kCategories )
        ExpenseCategory(text :category.name,index :kCategories.indexOf(category))
      ],
    ));
  }
}

class ExpenseCategory extends StatelessWidget {
  const ExpenseCategory({
    super.key, required this.index, required this.text,
  });
  final int index;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 7,
          height: 7,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kColors[index % kColors.length],
          ),
        ),
        SizedBox(
          width: 20,
        )
        ,
        Text(text)
      ],
    );
  }
}