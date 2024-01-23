import 'package:flutter/material.dart';
import '../common/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody,desktopBody;

  const ResponsiveLayout({
    super.key,
    required this.mobileBody,
    required this.desktopBody,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < tabletWidth) {
        return mobileBody;
      }  else {
        return desktopBody;
      }
    });
  }
}