import 'package:apiessai/themes/app_themes.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;  

  const CustomButton({
    super.key, 
    required this.text,
    required this.onTap,  
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: InkWell(
        onTap: onTap,  
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppTheme.primaryColor,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Center( 
            child: Text(
              text, 
              style: AppTheme().buttonTextStyle(15, Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
