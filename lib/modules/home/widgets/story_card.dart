import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xff212224)),
      child: ListTile(
        leading: const Icon(
          Icons.circle,
          size: 55.0,
        ),
        title: const Text(
          'What are smallcases?',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        subtitle: RichText(
          text: TextSpan(
            text: 'Understand in 60 seconds.',
            style: const TextStyle(color: Color(0xff707173)),
            children: <TextSpan>[
              TextSpan(
                text: 'Get Started.',
                style: TextStyle(
                    color: Colors.blue[700], fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}