import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 1),
        () => {
              //TODO navigate
              //context.router.replace(const MainScreen())
            });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        alignment: Alignment.center,
        color: Theme.of(context).colorScheme.primary,
        child: const Image(image: AssetImage("assets/etiya_logo.png")));
  }
}
