import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import '../../../../../themes/app_themes.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const  HeroIcon(HeroIcons.bolt, size: 40, color: AppTheme.white),
                Text("FastShop", style: AppTheme().appStyle(25, AppTheme.white, isBold: true ))
              ],
            ),
           const CircleAvatar(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Center(child: HeroIcon(HeroIcons.bell)),
              ),
            )
      ],
    );
  }
}