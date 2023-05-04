import 'package:flutter/material.dart';

class AddInformation extends StatelessWidget {
  const AddInformation(
      {super.key,
      required this.title,
      required this.subtitle,
      this.buttonText,
      this.color,
      this.buttonColor,
      this.height});
  final String title;
  final String subtitle;
  final String? buttonText;
  final Color? color;
  final Color? buttonColor;
  final double? height;

  @override
  Widget build(BuildContext context) {
    //Color(0xff365284)
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 18.0),
      height: height ?? 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color ?? const Color(0xff212224)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 10),
          Text(
            subtitle,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w300, fontSize: 15),
          ),
          const SizedBox(height: 5),
          TextButton(
            onPressed: () {},
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: buttonColor ?? const Color(0xff1D2731)),
              child: Text(
                buttonText ?? "",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xff365284),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
