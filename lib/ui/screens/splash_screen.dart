import 'package:auto_route/auto_route.dart';
import 'package:etiya_test_app/router.gr.dart';
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
    Future.delayed(const Duration(seconds: 1),
        () => {context.router.replace(const MainScreen())});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        key: const Key("logoContainer"),
        padding: const EdgeInsets.symmetric(horizontal: 35),
        alignment: Alignment.center,
        color: Theme.of(context).colorScheme.primary,
        child: const Image(image: AssetImage("assets/etiya_logo.png")));
  }
}
