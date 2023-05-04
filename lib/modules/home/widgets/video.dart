import 'package:flutter/material.dart';

class Video extends StatelessWidget {
  const Video({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(left: 18),
      alignment: Alignment.bottomLeft,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://images.assettype.com/fortuneindia/2019-10/85a34f2c-a768-40d9-bb1f-c364ddc9efc9/Smallcase_0F9A3701_New_copy.jpg?rect=0,0,3000,1688&w=1250&q=60'),
        ),
      ),
      child: Row(
        children: [
          const Text(
            'What are smallcases?',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20),
          ),
          const SizedBox(width: 60),
          Image.asset('images/youtube.png')
        ],
      ),
    );
  }
}
