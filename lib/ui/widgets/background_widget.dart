import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/ui/utility/assets_paths.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key , required this.centerWidget});

  final Widget centerWidget;
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          SvgPicture.asset(
            AssetsPaths.background,
            height: double.maxFinite,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          centerWidget
        ],
      );  
  }
}