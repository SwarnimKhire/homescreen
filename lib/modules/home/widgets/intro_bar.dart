import 'package:flutter/material.dart';

class IntroBar extends StatelessWidget {
  const IntroBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, bottom: 10),
      child: Row(
        children: [
          const Text(
            'Hola, Name',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xff212224),
            ),
            child: Row(
              children: const [
                Icon(
                  Icons.info,
                  color: Colors.grey,
                ),
                Text(
                  'Help',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.circle,
            color: Colors.blueAccent,
            size: 45,
          ),
        ],
      ),
    );
  }
}