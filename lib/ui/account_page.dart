import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_food/ui/cart_page.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF141316),
      appBar: AppBar(
        backgroundColor: Color(0xFF141316),
        leading: const Icon(Icons.menu, color: Colors.white),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/cart.svg',
              color: Colors.white,
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
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background_account.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      'assets/images/male_avatar.png',
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "username",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "email@email.com",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              // height: 800,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Colors.white,
              ),
              child: Column(
                spacing: 12,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        ListNameAccount(
                          imageUrl: "assets/images/wallet.png",
                          nameList: "Wallet",
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      spacing: 10,
                      children: [
                        ListNameAccount(
                          imageUrl: "assets/images/edit.png",
                          nameList: "Edit Profile",
                        ),
                        ListNameAccount(
                          imageUrl: "assets/images/user_blocked.png",
                          nameList: "View Blocked User",
                        ),
                        ListNameAccount(
                          imageUrl: "assets/images/list.png",
                          nameList: "Task Center",
                        ),
                        ListNameAccount(
                          imageUrl: "assets/images/terminal.png",
                          nameList: "Activities",
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      spacing: 10,
                      children: [
                        ListNameAccount(
                          imageUrl: "assets/images/setting.png",
                          nameList: "Settings",
                        ),
                        ListNameAccount(
                          imageUrl: "assets/images/favorite.png",
                          nameList: "Favorites",
                        ),
                        ListNameAccount(
                          imageUrl: "assets/images/download.png",
                          nameList: "Downloads",
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    margin: EdgeInsets.only(bottom: 100),
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      spacing: 10,
                      children: [
                        ListNameAccount(
                          imageUrl: "assets/images/logout.png",
                          nameList: "Logout",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ListNameAccount extends StatelessWidget {
  final String imageUrl;
  final String nameList;
  const ListNameAccount({
    super.key,
    required this.imageUrl,
    required this.nameList,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: 10,
          children: [
            Image.asset(imageUrl),
            Text(
              nameList,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
              ),
            )
          ],
        ),
        Icon(
          Icons.arrow_forward_ios_rounded,
          size: 14,
          color: Color(0xFFBABABA),
        )
      ],
    );
  }
}
