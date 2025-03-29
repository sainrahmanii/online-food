import 'package:flutter/material.dart';

class CardFavoriteWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String price;
  const CardFavoriteWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 130,
      decoration: BoxDecoration(
        color: const Color(0xFFF6F6F6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        spacing: 10,
        children: [
          Container(
            width: 130,
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 20,
                height: 20,
                margin: const EdgeInsets.only(right: 6, bottom: 6),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(
                  Icons.favorite,
                  size: 10,
                  color: Color(0xFFEB5757),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontFamily: "Poppins",
                ),
              ),
              SizedBox(
                width: 200,
                child: Text(
                  description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFFBABABA),
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              Spacer(),
              Text(
                price,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontFamily: "Poppins",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
