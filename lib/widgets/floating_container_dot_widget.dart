import 'package:flutter/material.dart';
import '../common/theme.dart';

class FloatingContainerDotWidget extends StatelessWidget {
  final Widget imageWidget;
  const FloatingContainerDotWidget({
    super.key,
    required this.imageWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: imageWidget,
        ),
        Positioned(
          bottom: 2,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: tertiary300,
                borderRadius: BorderRadius.circular(5),
              ),
              height: 25,
              width: 150,
            ),
          ),
        ),
      ],
    );
  }
}
