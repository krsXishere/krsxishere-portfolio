import 'package:flutter/material.dart';
import '../common/theme.dart';

class DrawerItemWidget extends StatefulWidget {
  final String? text;
  final Function()? onTap;

  const DrawerItemWidget({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  State<DrawerItemWidget> createState() => _DrawerItemWidgetState();
}

class _DrawerItemWidgetState extends State<DrawerItemWidget> {
  Color textTileColor = tertiary200;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        hoverColor: tertiary400,
        splashColor: white,
        onTap: widget.onTap,
        onHover: (value) {
          if (value == true) {
            setState(() {
              textTileColor = white;
            });
          } else {
            setState(() {
              textTileColor = tertiary200;
            });
          }
        },
        child: SizedBox(
          child: ListTile(
            title: Text(
              widget.text.toString(),
              style: primaryTextStyle.copyWith(
                fontWeight: regular,
                color: textTileColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}