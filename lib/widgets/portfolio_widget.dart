import 'package:flutter/material.dart';
import '../common/theme.dart';
import 'cutter_image_widget.dart';

class PortfolioWidget extends StatelessWidget {
  final String image, portfolioDescription;
  const PortfolioWidget({
    super.key,
    required this.image,
    required this.portfolioDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CutterImageWidget(
          image: image,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              portfolioDescription,
              style: primaryTextStyle.copyWith(
                color: white,
                fontSize: 16,
              ),
            ),
          ),
        )
      ],
    );
  }
}
