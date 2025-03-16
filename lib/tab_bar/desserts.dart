import 'package:flutter/material.dart';
import 'package:online_food/data/desserts.dart';
import 'package:online_food/widgets/card_food.dart';

class Desserts extends StatelessWidget {
  const Desserts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 16),
            //   child: Text(
            //     "Popular Food",
            //     style: TextStyle(
            //       fontFamily: 'Poppins',
            //       fontSize: 30,
            //       fontWeight: FontWeight.w600,
            //     ),
            //   ),
            // ),
            // SizedBox(height: 18), // Ganti spacing dengan SizedBox
            ListView.separated(
              separatorBuilder: (context, index) => SizedBox(height: 16),
              padding: const EdgeInsets.only(bottom: 86, right: 8, left: 8),
              shrinkWrap: true, // Menyesuaikan tinggi dengan konten
              physics: NeverScrollableScrollPhysics(), // Mencegah scroll ganda
              itemCount: desserts.length,
              itemBuilder: (context, index) {
                return CardFood(
                  foodName: desserts[index]['name']!,
                  foodDescription: desserts[index]['description']!,
                  foodPrice: desserts[index]['price']!,
                  foodImage: desserts[index]['image']!,
                  foodThumbnail: desserts[index]['thumbnail']!,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
