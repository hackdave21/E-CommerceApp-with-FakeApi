import 'package:apiessai/core/utils/screen_size.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: context.heightPercent(10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const  HeroIcon(HeroIcons.bolt, size: 40,),
                Text("FastShop", style: AppTheme().stylish3(25, AppTheme.black, isBold: true ))
              ],
            ),
             SizedBox(
              height: context.heightPercent(2),
            ),
            Image.asset("assets/back.png"),
             SizedBox(
              height: context.heightPercent(2),
            ),
             Text("New Fashion Collection", style: AppTheme().stylish3(15, AppTheme.black )),
              Text("Shop Smarter, Faster with FastShop", style: AppTheme().stylish3(20, AppTheme.black, isBold: true )),
              SizedBox(
                height: context.heightPercent(7),
              ),
              CustomButton(text: "Get Started", onTap: () { 
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BottomNavBar()),
              );
               },)
          ],
        ),
      ),
    );
  }
}