import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:online_food/widgets/custom_navigation_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/lottie/splash.json",
            controller: _controller, onLoaded: (composition) {
          _controller
            ..duration = composition.duration
            ..forward().whenComplete(() {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const CustomButtomNavigationBar(),
                ),
              );
            });
        }),
      ),
    );
  }
}
