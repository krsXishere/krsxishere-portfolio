import 'package:flutter/material.dart';

class CutterImageWidget extends StatelessWidget {
  final String image;
  const CutterImageWidget({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.asset(image),
    );
  }
}
