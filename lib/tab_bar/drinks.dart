import 'package:flutter/material.dart';
import 'package:online_food/data/desserts.dart';
import 'package:online_food/data/drinks.dart';
import 'package:online_food/widgets/card_food.dart';

class Drinks extends StatelessWidget {
  const Drinks({super.key});

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
              itemCount: drinks.length,
              itemBuilder: (context, index) {
                return CardFood(
                  foodName: drinks[index]['name']!,
                  foodDescription: drinks[index]['description']!,
                  foodPrice: drinks[index]['price']!,
                  foodImage: drinks[index]['image']!,
                  foodThumbnail: drinks[index]['thumbnail']!,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
