import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:online_food/ui/register_page.dart';
import 'package:online_food/widgets/custom_edit_text_widget.dart';
import 'package:online_food/widgets/custom_navigation_bar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Lottie.asset(
                "assets/lottie/splash.json",
                width: double.infinity,
              ),
              Text(
                "Sign In",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Enter valid username & password to continue",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 28,
                  vertical: 17,
                ),
                child: Column(
                  spacing: 17,
                  children: [
                    CustomEditTextWidget(
                      icon: "assets/images/user.png",
                      hintText: "username or email",
                      obsecureText: false,
                    ),
                    CustomEditTextWidget(
                      icon: "assets/images/password.png",
                      hintText: "password",
                      obsecureText: true,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => CustomButtomNavigationBar(),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 48,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFF11AC6A),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          "Login",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        height: 48,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFFF6F7FB),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 5,
                          children: [
                            Image.asset(
                              "assets/images/google.png",
                              height: 25,
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              "Google",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 10,
                      children: [
                        Text(
                          "Have'nt an account ?",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 16,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegisterPage(),
                              ),
                            );
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                              color: Color(0xFF11AC6A),
                              fontSize: 16,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
