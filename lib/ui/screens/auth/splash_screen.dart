import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/controller/auth_controller.dart';
import 'package:task_manager/ui/screens/auth/main_bottom_nav_screen.dart';
import 'package:task_manager/ui/screens/auth/signin_screen.dart';
import 'package:task_manager/ui/utility/assets_paths.dart';
import 'package:task_manager/ui/widgets/background_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future <void> _moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    bool isLoggedIn = await AuthController.checkAuthState();
    
    Navigator.pushReplacement(context , MaterialPageRoute(builder: (context) => isLoggedIn ? MainBottomNavScreen() : SigninScreen()));
  }

  @override
  void initState() {
    _moveToNextScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(centerWidget: Center(
        child: SvgPicture.asset(AssetsPaths.logo),
      ))
    );
  }
}
