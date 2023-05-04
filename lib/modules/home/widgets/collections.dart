import 'package:flutter/material.dart';
import 'package:home_screen/modules/home/models/gridscreen.dart';

class Collections extends StatelessWidget {
  const Collections({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, mainAxisSpacing: 8, crossAxisSpacing: 8),
      itemCount: gridname.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: const BoxDecoration(
            color: Color(0xff1D1E20),
          ),
          child: Column(
            children: [
              Image.asset(
                gridname[index].image ?? "",
                height: 40,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                gridname[index].names ?? "",
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        );
      },
    );
  }
}
