import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_food/ui/cart_page.dart';
import 'package:online_food/widgets/card_favorite_widget.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/cart.svg',
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const CartPage();
                  },
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(right: 16, left: 16, bottom: 100),
        child: Column(
          spacing: 10,
          children: [
            CardFavoriteWidget(
              imageUrl: 'assets/images/sneakers.png',
              title: 'Sneakers',
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla hendrerit, augue vitae sollicitudin tristique, risus sapien luctus nunc, quis dignissim erat ante et augue",
              price: "IDR 45.000",
            ),
            CardFavoriteWidget(
              imageUrl: 'assets/images/singkong_potato.png',
              title: 'Singkong Kriuk',
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla hendrerit, augue vitae sollicitudin tristique, risus sapien luctus nunc, quis dignissim erat ante et augue",
              price: "IDR 45.000",
            ),
            CardFavoriteWidget(
              imageUrl: 'assets/images/melon.png',
              title: 'Melon Honey',
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla hendrerit, augue vitae sollicitudin tristique, risus sapien luctus nunc, quis dignissim erat ante et augue",
              price: "IDR 45.000",
            ),
            CardFavoriteWidget(
              imageUrl: 'assets/images/sushi.png',
              title: 'Sushi Roll',
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla hendrerit, augue vitae sollicitudin tristique, risus sapien luctus nunc, quis dignissim erat ante et augue",
              price: "IDR 45.000",
            ),
            CardFavoriteWidget(
              imageUrl: 'assets/images/meet.png',
              title: 'Wagyu Beef',
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla hendrerit, augue vitae sollicitudin tristique, risus sapien luctus nunc, quis dignissim erat ante et augue",
              price: "IDR 45.000",
            ),
            CardFavoriteWidget(
              imageUrl: 'assets/images/sneakers.png',
              title: 'Sneakers',
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla hendrerit, augue vitae sollicitudin tristique, risus sapien luctus nunc, quis dignissim erat ante et augue",
              price: "IDR 45.000",
            ),
            CardFavoriteWidget(
              imageUrl: 'assets/images/singkong_potato.png',
              title: 'Singkong Kriuk',
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla hendrerit, augue vitae sollicitudin tristique, risus sapien luctus nunc, quis dignissim erat ante et augue",
              price: "IDR 45.000",
            ),
            CardFavoriteWidget(
              imageUrl: 'assets/images/melon.png',
              title: 'Melon Honey',
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla hendrerit, augue vitae sollicitudin tristique, risus sapien luctus nunc, quis dignissim erat ante et augue",
              price: "IDR 45.000",
            ),
            CardFavoriteWidget(
              imageUrl: 'assets/images/sushi.png',
              title: 'Sushi Roll',
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla hendrerit, augue vitae sollicitudin tristique, risus sapien luctus nunc, quis dignissim erat ante et augue",
              price: "IDR 45.000",
            ),
            CardFavoriteWidget(
              imageUrl: 'assets/images/meet.png',
              title: 'Wagyu Beef',
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla hendrerit, augue vitae sollicitudin tristique, risus sapien luctus nunc, quis dignissim erat ante et augue",
              price: "IDR 45.000",
            ),
          ],
        ),
      ),
    );
  }
}
