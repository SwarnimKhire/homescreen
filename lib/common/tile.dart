import 'package:flutter/material.dart';

class TileScreen extends StatelessWidget {
  const TileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 18),
      width: 301,
      height: 290,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xff212224)),
      child: Column(
        children: [
          Container(
            width: 301,
            height: 84,
            padding: const EdgeInsets.only(left: 15),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              color: Color(0xff27282A),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Most Invested',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  'Top choice this week',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          reTile(url: 'img5.png', text: '1. Equity and Gold'),
          
          reTile(url: 'img6.png', text: '2. All weather investing'),
          
          reTile(url: 'img7.png', text: '3. Top 100 stocks'),
        ],
      ),
    );
  }

  Widget reTile({required String url, required String text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ListTile(
          tileColor: const Color(0xff212224),
          leading: Image.asset('images/$url'),
          title: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          )),
    );
  }
}
