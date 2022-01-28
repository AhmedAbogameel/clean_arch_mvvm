import 'dart:async';

import 'package:clean_arch_mvvm/app/managers/assets.dart';
import 'package:clean_arch_mvvm/app/managers/color.dart';
import 'package:clean_arch_mvvm/app/router/router.dart';
import 'package:clean_arch_mvvm/features/on_boarding/presentation/view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  Timer? _timer;

  @override
  void initState() {
    _startDelay();
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startDelay() => _timer = Timer(Duration(seconds: 2), _goNext);

  void _goNext() => MagicRouter.navigateAndPopAll(OnBoardingView());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(
        child: Image.asset(AssetsManager.splashLogo),
      ),
    );
  }
}
