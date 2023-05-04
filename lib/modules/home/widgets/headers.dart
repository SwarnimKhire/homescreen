import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header(
      {super.key,
      this.titleColor,
      this.subTitleColor,
      required this.title,
      this.subtitle,
      this.image,
      this.titleFontSize});
  final String title;
  final String? subtitle;
  final Color? titleColor;
  final Color? subTitleColor;
  final Image? image;
  final double? titleFontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0,
      ),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
              color: titleColor ?? Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: titleFontSize ?? 22.0),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            subtitle ?? "",
            style: TextStyle(
                color: subTitleColor ?? const Color(0xff878787),
                fontWeight: FontWeight.w700),
          ),
        ),
        trailing:
            ClipRRect(borderRadius: BorderRadius.circular(50), child: image),
      ),
    );
  }
}
