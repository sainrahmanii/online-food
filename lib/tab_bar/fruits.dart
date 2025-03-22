import 'package:flutter/material.dart';
import 'package:online_food/data/fruits.dart';
import 'package:online_food/widgets/card_food.dart';

class Fruits extends StatelessWidget {
  const Fruits({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.separated(
              separatorBuilder: (context, index) => SizedBox(height: 16),
              padding: const EdgeInsets.only(bottom: 86, right: 8, left: 8),
              shrinkWrap: true, // Menyesuaikan tinggi dengan konten
              physics: NeverScrollableScrollPhysics(), // Mencegah scroll ganda
              itemCount: fruits.length,
              itemBuilder: (context, index) {
                return CardFood(
                  foodName: fruits[index]['name']!,
                  foodDescription: fruits[index]['description']!,
                  foodPrice: fruits[index]['price']!,
                  foodImage: fruits[index]['image']!,
                  foodThumbnail: fruits[index]['thumbnail']!,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
