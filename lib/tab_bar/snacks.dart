import 'package:flutter/material.dart';
import 'package:online_food/data/snacks.dart';
import 'package:online_food/widgets/card_food.dart';

class Snacks extends StatelessWidget {
  const Snacks({super.key});

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
              itemCount: snacks.length,
              itemBuilder: (context, index) {
                return CardFood(
                  foodName: snacks[index]['name']!,
                  foodDescription: snacks[index]['description']!,
                  foodPrice: snacks[index]['price']!,
                  foodImage: snacks[index]['image']!,
                  foodThumbnail: snacks[index]['thumbnail']!,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
