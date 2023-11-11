import 'package:app_store/packages/views/home/buyerHome/component/category/category.dart';
import 'package:app_store/packages/views/home/compCategory/food.dart';
import 'package:app_store/services/themes/app_color.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Categories(),
        Expanded(
            child: GridView.builder(
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemBuilder: (context, index) => const PageFood(),
        ))
      ],
    );
  }
}
