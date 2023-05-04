import 'package:flutter/material.dart';
import 'package:home_screen/modules/home/models/investment_card_model.dart';

class InvestmentCard extends StatelessWidget {
  const InvestmentCard({super.key, required this.investmentModel});

  final InvestmentModel investmentModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 332,
          height: 32,
          decoration: const BoxDecoration(
            color: Color(0xff222538),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                maxRadius: 10,
                backgroundColor: Color(0xff7D4BFD),
                child: Icon(
                  Icons.trending_up,
                  color: Colors.white,
                  size: 10,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                '${investmentModel.userCount}K users brought this in last ${investmentModel.days} days.',
                style: const TextStyle(
                    color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 18),
          height: 280,
          width: 341,
          decoration: BoxDecoration(
              color: const Color(0xff27282A),
              borderRadius: BorderRadius.circular(8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              investmentModel.image ?? "",
                            ))),
                  ),
                  const Spacer(),
                  Container(
                    height: 40,
                    width: 110,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color(
                        0xff4A8A79,
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8)),
                    ),
                    child: Text(
                      '${investmentModel.volatality} Volatitlity',
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Text(
                investmentModel.smallcaseName ?? "",
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              const SizedBox(height: 14),
              Text(
                investmentModel.description ?? "",
                style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25.0)
                    .add(const EdgeInsets.only(right: 18)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RepeatInfo(
                      title: '${investmentModel.year}Y CAGR',
                      subtitle: '10.44%',
                    ),
                    RepeatInfo(
                        title: 'Min. Amount',
                        subtitle: investmentModel.minAmount ?? ""),
                    const Icon(
                      Icons.bookmark_border,
                      color: Colors.grey,
                      size: 40,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class RepeatInfo extends StatelessWidget {
  const RepeatInfo({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.grey, fontSize: 15),
        ),
        Text(
          subtitle,
          style: const TextStyle(color: Colors.green, fontSize: 20),
        ),
      ],
    );
  }
}
