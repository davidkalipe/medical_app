import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {

  final iconImagePath;
  final String categoryName;

  const CategoryCard({super.key, this.iconImagePath, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Image.asset(
              iconImagePath,
              height: 60,
            ),
            const SizedBox(width: 10),
            Text(categoryName)
          ],
        ),
      ),
    );
  }
}
