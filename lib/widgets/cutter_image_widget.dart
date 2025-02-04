import 'package:flutter/material.dart';
import 'package:krsxishere_portfolio/common/theme.dart';

class CutterImageWidget extends StatelessWidget {
  final String image;
  const CutterImageWidget({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(defaultPadding),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(image),
      ),
    );
  }
}
