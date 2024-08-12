import 'package:apiessai/presentation/views/bottom_nav_bar.dart';
import 'package:apiessai/presentation/widgets/custom_button.dart';
import 'package:apiessai/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
             const  HeroIcon(HeroIcons.bolt,),
              Text("FastShop", style: AppTheme().stylish3(20, AppTheme.black, isBold: true ))
            ],
          ),
          Image.asset("assets/back.jpg"),
           Text("FastShop", style: AppTheme().stylish3(20, AppTheme.black, isBold: true )),
            Text("FastShop", style: AppTheme().stylish3(20, AppTheme.black, isBold: true )),
            CustomButton(text: "Get Started", onTap: () { 
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const BottomNavBar()),
            );
             },)
        ],
      ),
    );
  }
}