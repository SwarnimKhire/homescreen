import 'package:flutter/material.dart';

import 'package:home_screen/common/tile.dart';
import 'package:home_screen/modules/home/data/temp_data.dart';
import 'package:home_screen/modules/home/widgets/add_information.dart';
import 'package:home_screen/modules/home/widgets/collections.dart';

import 'package:home_screen/modules/home/widgets/headers.dart';
import 'package:home_screen/modules/home/widgets/intro_bar.dart';
import 'package:home_screen/modules/home/widgets/investment_card.dart';
import 'package:home_screen/modules/home/widgets/story_card.dart';
import 'package:home_screen/modules/home/widgets/video.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1D1E20),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            const IntroBar(),
            const StoryCard(),
            const SizedBox(height: 20.0),
            Header(
              title: 'Ideal for getting started',
              subtitle: 'Start your smallcase journey',
              image: Image.asset('images/img2.png'),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 280 + 35,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: investmentModelList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0, left: 10),
                      child: InvestmentCard(
                          investmentModel: investmentModelList[index]),
                    );
                  }),
            ),
            const SizedBox(height: 10),
            const Header(
              title: 'Trending smallcases ⚡',
              titleFontSize: 20,
              subtitle: 'Ranked List of user favourites',
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 354,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(bottom: 40.0),
                    child: TileScreen(),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 18.0),
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              decoration: BoxDecoration(
                  color: const Color(0xff27282A),
                  borderRadius: BorderRadius.circular(8)),
              child: Header(
                title: 'There is a smallcase for \neveryone. Find yours now',
                titleFontSize: 18,
                titleColor: Colors.grey,
                subtitle: 'Start here',
                subTitleColor: Colors.blue,
                image: Image.asset('images/img8.png'),
              ),
            ),
            const SizedBox(height: 25),
            const Header(
              title: 'Take your pick',
              subtitle: 'Popular collection of smallcases',
            ),
            const SizedBox(height: 20),
            const AddInformation(
              title: 'Ready to start investing?',
              subtitle:
                  'Directly connect to your existing\nbroker account. No hassle',
              color: Color(0xff365284),
              height: 150,
              buttonColor: Colors.white,
              buttonText: 'Connect with broker',
            ),
            SizedBox(height: 20.0),
            AddInformation(
              title: 'Dont have a broker account?',
              subtitle:
                  'broker account enable you\nto place orders\non stocks and ETFs',
              
              buttonText: 'Open an account',
            ),
            const SizedBox(height: 35),
            const SizedBox(height: 250, child: Collections()),
            const SizedBox(height: 20),
            const Header(title: 'Understanding smallcases'),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [Video(), Video()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
