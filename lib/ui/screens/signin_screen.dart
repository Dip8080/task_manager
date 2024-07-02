import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/background_widget.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        centerWidget: SafeArea(child: Center(child: Text('this is signin screen'),)))
    );
  }
}