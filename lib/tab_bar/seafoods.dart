import 'package:flutter/material.dart';
import 'package:online_food/data/seafoods.dart';
import 'package:online_food/widgets/card_food.dart';

class Seafoods extends StatelessWidget {
  const Seafoods({super.key});

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
              itemCount: seafoods.length,
              itemBuilder: (context, index) {
                return CardFood(
                  foodName: seafoods[index]['name']!,
                  foodDescription: seafoods[index]['description']!,
                  foodPrice: seafoods[index]['price']!,
                  foodImage: seafoods[index]['image']!,
                  foodThumbnail: seafoods[index]['thumbnail']!,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
