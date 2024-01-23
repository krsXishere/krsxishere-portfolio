import 'package:flutter/material.dart';
import '../common/theme.dart';

class ButtonNavigateWidget extends StatelessWidget {
  final String text;
  final double paddingRight;
  final Function() onPressed;
  final Color backgroundColor;
  
  const ButtonNavigateWidget({
    super.key,
    required this.text,
    required this.paddingRight,
    required this.onPressed,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 10,
        right: paddingRight,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: primaryTextStyle.copyWith(
            color: white,
          ),
        ),
      ),
    );
  }
}
