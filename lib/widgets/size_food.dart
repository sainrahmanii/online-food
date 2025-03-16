import 'package:flutter/material.dart';

class SizeFood extends StatefulWidget {
  @override
  _SizeFoodState createState() => _SizeFoodState();
}

class _SizeFoodState extends State<SizeFood> {
  String selectedSize = "S"; // Default ukuran yang dipilih

  void selectSize(String size) {
    setState(() {
      selectedSize = size; // Update ukuran yang dipilih
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Size:",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        SizedBox(height: 8), // Spasi antara teks dan tombol size
        Row(
          spacing: 20,
          children: [
            buildSizeButton("S"),
            buildSizeButton("M"),
            buildSizeButton("L"),
          ],
        ),
      ],
    );
  }

  Widget buildSizeButton(String size) {
    bool isSelected = selectedSize == size;
    return GestureDetector(
      onTap: () => selectSize(size), // Saat tombol ditekan, ubah ukuran
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFF11AC6A) : Color(0xFFF6F7FB),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text(
            size,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: isSelected ? Colors.white : Color(0xFF202020),
            ),
          ),
        ),
      ),
    );
  }
}
