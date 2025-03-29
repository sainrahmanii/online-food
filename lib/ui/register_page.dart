import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:online_food/ui/login_page.dart';
import 'package:online_food/widgets/custom_edit_text_widget.dart';
import 'package:online_food/widgets/custom_navigation_bar.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                "Sign Up",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Create your account here for buying some food",
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
                      hintText: "username",
                      obsecureText: false,
                    ),
                    CustomEditTextWidget(
                      icon: "assets/images/email.png",
                      hintText: "email",
                      obsecureText: false,
                    ),
                    CustomEditTextWidget(
                      icon: "assets/images/password.png",
                      hintText: "password",
                      obsecureText: true,
                    ),
                    CustomEditTextWidget(
                      icon: "assets/images/password.png",
                      hintText: "password confirmation",
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
                          "Create Account",
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
                          "Have an account ?",
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
                                builder: (context) => LoginPage(),
                              ),
                            );
                          },
                          child: Text(
                            "Sign in",
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
