import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/constants.dart';

final List<List> cardContent = [
  [
    AppImages.video1,
    '8:36',
    AppImages.logo1,
    'Ubuntu 20.04 LTS Focal Fossa. What\'s New',
    '109K views',
    '2 years ago',
    'Pingvinus',
  ],
  [
    AppImages.video2,
    '8:36',
    AppImages.logo2,
    'ПРОЕКТ Flutter+Firestore (RU): #3 - Firebase Auth провайдер (часть 1)',
    'Learn Programming Together',
    '13K views',
    '2 years ago',
  ],
  [
    AppImages.video3,
    '12:44',
    AppImages.logo3,
    'Using TestFlight! (Xcode)',
    '136K views',
    '6 years ago',
    'Jared Davidson',
  ],
  [
    AppImages.video4,
    '5:44',
    AppImages.logo4,
    'EVERY Flutter Cupertino Widgets',
    '9,6K views',
    '3 days ago',
    'Flutter Mapp',
  ],
  [
    AppImages.video5,
    '23:52',
    AppImages.logo5,
    'How to use API\'s in your Flutter BLOC Project - UPDATED 2022 (flutter_bloc v8)',
    '15K views',
    '5 years ago',
    'Flutter From Scratch',
  ],
];

class CardContainer extends StatelessWidget {
  const CardContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemCount: cardContent.length,
        itemBuilder: ((BuildContext context, int index) {
          return CardWidgetForList(cardContent: cardContent[index]);
        }));
  }
}

// ignore: must_be_immutable
class CardWidgetForList extends StatelessWidget {
  List cardContent;
  CardWidgetForList({Key? key, required this.cardContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mainWhite,
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            height: 222,
            child: Stack(
              children: [
                Image.asset(cardContent[0]),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: double.maxFinite,
                  height: 215,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      cardContent[1],
                      style: const TextStyle(
                          backgroundColor: AppColors.mainBlack,
                          letterSpacing: 1,
                          height: 1.4,
                          color: AppColors.mainWhite),
                    ),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            leading: MaterialButton(
              height: 60,
              minWidth: 60,
              onPressed: () {},
              textColor: Colors.white,
              padding: const EdgeInsets.all(2),
              shape: const CircleBorder(),
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 20,
                  backgroundImage: AssetImage(cardContent[2])),
            ),
            trailing: MaterialButton(
              height: 45,
              minWidth: 51,
              onPressed: () {},
              textColor: Colors.white,
              padding: const EdgeInsets.all(2),
              shape: const CircleBorder(),
              child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 7,
                  backgroundImage: AssetImage(AppImages.more)),
            ),
            title: Text(
              cardContent[3],
              style: const TextStyle(color: AppColors.mainBlack, fontSize: 14),
            ),
            subtitle: RichText(
                text: TextSpan(
                    text: cardContent[4],
                    style: const TextStyle(
                        color: Color.fromARGB(117, 0, 0, 0), fontSize: 12),
                    children: [
                  TextSpan(text: cardContent[5]),
                  TextSpan(text: cardContent[6])
                ])),
          )
        ],
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mainWhite,
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            height: 222,
            child: Stack(
              children: [
                Image.asset(AppImages.video1),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: double.maxFinite,
                  height: 215,
                  child: const Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      '8:23',
                      style: TextStyle(
                          backgroundColor: AppColors.mainBlack,
                          letterSpacing: 1,
                          height: 1.4,
                          color: AppColors.mainWhite),
                    ),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            leading: MaterialButton(
              height: 60,
              minWidth: 60,
              onPressed: () {},
              textColor: Colors.white,
              padding: const EdgeInsets.all(2),
              shape: const CircleBorder(),
              child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 20,
                  backgroundImage: AssetImage(AppImages.logo1)),
            ),
            trailing: MaterialButton(
              height: 45,
              minWidth: 51,
              onPressed: () {},
              textColor: Colors.white,
              padding: const EdgeInsets.all(2),
              shape: const CircleBorder(),
              child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 7,
                  backgroundImage: AssetImage(AppImages.more)),
            ),
            title: const Text(
              'Ubuntu 20.04 LTS Focal Fossa. What\'s New',
              style: TextStyle(color: AppColors.mainBlack, fontSize: 14),
            ),
            subtitle: RichText(
                text: const TextSpan(
                    text: 'Pingvinus · ',
                    style: TextStyle(
                        color: Color.fromARGB(117, 0, 0, 0), fontSize: 12),
                    children: [
                  TextSpan(text: '109K views · '),
                  TextSpan(text: '3 years ago')
                ])),
          )
        ],
      ),
    );
  }
}
