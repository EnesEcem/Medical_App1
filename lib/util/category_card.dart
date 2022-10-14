import 'package:flutter/material.dart';

class CategortCard extends StatelessWidget {
  final iconImage;
  final String categoryName;
  const CategortCard({
    super.key,
    required this.categoryName,
    this.iconImage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.deepPurple[100],
        ),
        child: Row(
          children: [
            Image.asset(
              iconImage,
              height: 60,
            ),
            Text(categoryName),
          ],
        ),
      ),
    );
  }
}
