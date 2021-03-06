import 'package:estim8/ui/get_started.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'home_screen.dart';

class SplashScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 1,
      navigateAfterSeconds: GetStarted(),
    );
  }
}
