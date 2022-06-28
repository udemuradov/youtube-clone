// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/constants.dart';

class AdsWidget extends StatelessWidget {
  const AdsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mainWhite,
      height: 330,
      child: const AdsCardWidget(),
    );
  }
}

class AdsCardWidget extends StatelessWidget {
  const AdsCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 225,
          child: Stack(
            children: [
              Image.asset(
                AppImages.ads,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 40,
                  color: const Color.fromARGB(255, 59, 4, 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'LEARN MORE',
                        style: TextStyle(
                            color: AppColors.mainWhite,
                            fontWeight: FontWeight.w500,
                            letterSpacing: .5),
                      ),
                      Icon(
                        Icons.open_in_new,
                        color: AppColors.mainWhite,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text('Get started with 400 € ad credit',
              style: TextStyle(color: AppColors.mainBlack)),
        ),
        const SizedBox(
          height: 8,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Find more customers with ad your ad budget, using automated solutions from Google Ads',
            style: TextStyle(color: Color.fromARGB(255, 150, 150, 150)),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Container(
              color: const Color.fromARGB(255, 236, 184, 13),
              margin: const EdgeInsets.only(left: 10),
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 6),
              child: const Text(
                'Ad',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'Google Ads',
              style: const TextStyle(
                  color: const Color.fromARGB(255, 128, 128, 128),
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
            ),
          ],
        )
      ],
    );
  }
}
