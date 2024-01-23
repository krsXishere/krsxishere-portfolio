import 'package:flutter/material.dart';
import 'package:krsxishere_portfolio/widgets/responsive_layout_widget.dart';
import '../common/theme.dart';
import '../pages/home_mobile_page.dart';
import '../pages/home_page.dart';

class TemplateWidget extends StatefulWidget {
  const TemplateWidget({super.key});

  @override
  State<TemplateWidget> createState() => _TemplateWidgetState();
}

class _TemplateWidgetState extends State<TemplateWidget> {
  @override
  Widget build(BuildContext context) {
    return Title(
      title: "Krisna Purnama",
      color: white,
      child: const ResponsiveLayout(
        mobileBody: HomeMobilePage(),
        desktopBody: HomePage(),
      ),
    );
  }
}
