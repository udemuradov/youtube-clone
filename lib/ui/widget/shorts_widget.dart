import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/constants.dart';

final List<List<String>> shortsContent = [
  [
    AppImages.shorts1,
    'Flutter 100 Days of Code - Day 59 (e-commerce with GetX) #shorts',
    '130K views',
  ],
  [
    AppImages.shorts2,
    'Hacking 🔥 Expectation vs Reality | Coding Status For WhatsApp',
    '845 views',
  ],
  [
    AppImages.shorts3,
    'Mid A Site Smoke MİRAGE #csgomirage #miragecsgo #miragesmokes #csgo',
    '36K views',
  ],
  [
    AppImages.shorts4,
    'Night Coding with Flutter 🔥',
    '17K views',
  ],
  [
    AppImages.shorts5,
    'Fullstack Development Iceberg #Shorts',
    '480K views',
  ],
];

class ShortsWidget extends StatelessWidget {
  const ShortsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mainWhite,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                AppImages.shortsRed,
                width: 20,
                height: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Shorts',
                style: TextStyle(
                    color: AppColors.mainBlack,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              margin: const EdgeInsets.only(left: 4),
              height: 300,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisExtent: 160,
                      mainAxisSpacing: 10),
                  itemCount: shortsContent.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return ShortsCardWidget(
                      shortsContent: shortsContent[index],
                    );
                  }))
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class ShortsCardWidget extends StatelessWidget {
  List<String> shortsContent;
  ShortsCardWidget({Key? key, required this.shortsContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(shortsContent[0],
            color: const Color.fromRGBO(0, 0, 0, 0.3),
            colorBlendMode: BlendMode.darken),
        const Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
            child: Icon(
              Icons.more_vert_outlined,
              color: AppColors.mainWhite,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 8, bottom: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  shortsContent[1],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      color: AppColors.mainWhite,
                      fontWeight: FontWeight.w500,
                      letterSpacing: .2),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  shortsContent[2],
                  style: const TextStyle(
                      color: AppColors.mainWhite,
                      fontWeight: FontWeight.w500,
                      fontSize: 13),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
