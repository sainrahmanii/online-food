import 'package:flutter/material.dart';
import 'package:online_food/data/fast_food.dart';
import 'package:online_food/widgets/card_food.dart';

class FastFood extends StatelessWidget {
  const FastFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Ganti spacing dengan SizedBox
            ListView.separated(
              separatorBuilder: (context, index) => SizedBox(height: 16),
              padding: const EdgeInsets.only(bottom: 86, right: 8, left: 8),
              shrinkWrap: true, // Menyesuaikan tinggi dengan konten
              physics: NeverScrollableScrollPhysics(), // Mencegah scroll ganda
              itemCount: fastFood.length,
              itemBuilder: (context, index) {
                return CardFood(
                  foodName: fastFood[index]['name']!,
                  foodDescription: fastFood[index]['description']!,
                  foodPrice: fastFood[index]['price']!,
                  foodImage: fastFood[index]['image']!,
                  foodThumbnail: fastFood[index]['thumbnail']!,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
