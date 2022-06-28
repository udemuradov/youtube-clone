import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:youtube_clone/utils/constants.dart';

class AppHeaderWidget extends StatelessWidget {
  const AppHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> appbarKeywords = [
      'All',
      'New to you',
      'Flutter',
      'Live',
      'Gaming',
      'Music',
      'Computer programming',
      'Gadgets',
      'Mixes',
      'Apple',
      'Test drives',
    ];
    return SliverAppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      floating: true,
      title: Column(
        children: [
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SvgPicture.asset(
                      AppImages.youtubeLogo,
                      height: 20,
                      width: 20,
                      fit: BoxFit.contain,
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MaterialButton(
                        height: 45,
                        minWidth: 51,
                        onPressed: () {},
                        textColor: Colors.white,
                        padding: const EdgeInsets.all(2),
                        shape: const CircleBorder(),
                        child: SvgPicture.asset(
                          AppImages.notification,
                        ),
                      ),
                      MaterialButton(
                        height: 45,
                        minWidth: 51,
                        onPressed: () {},
                        textColor: Colors.white,
                        padding: const EdgeInsets.all(2),
                        shape: const CircleBorder(),
                        child: SvgPicture.asset(
                          AppImages.searchIcon,
                        ),
                      ),
                      MaterialButton(
                        height: 45,
                        minWidth: 51,
                        onPressed: () {},
                        textColor: Colors.white,
                        padding: const EdgeInsets.all(2),
                        shape: const CircleBorder(),
                        child: const CircleAvatar(
                            maxRadius: 15,
                            backgroundImage:
                                AssetImage(AppImages.appbarProfileIcon)),
                      ),
                    ],
                  ))
            ],
          ),
        ],
      ),
      bottom: PreferredSize(
          // ignore: sort_child_properties_last
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: SizedBox(
              height: 35,
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  TextButton.icon(
                      style: TextButton.styleFrom(
                          backgroundColor: AppColors.mainGrey),
                      onPressed: () {},
                      icon: SvgPicture.asset(AppImages.explore),
                      label: const Text(
                        'Explore',
                        style: TextStyle(color: AppColors.mainBlack),
                      )),
                  const SizedBox(
                    width: 5,
                  ),
                  const VerticalDivider(
                    thickness: 1,
                    color: Color.fromARGB(255, 206, 204, 204),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Row(
                    children: appbarKeywords
                        .map((e) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 3),
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      backgroundColor: AppColors.mainGrey),
                                  onPressed: () {},
                                  child: Text(
                                    e,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w300,
                                        color: AppColors.mainBlack),
                                  )),
                            ))
                        .toList(),
                  )
                ],
              ),
            ),
          ),
          preferredSize: const Size.fromHeight(50)),
      centerTitle: true,
      toolbarHeight: 45,
    );
  }
}

class AppBottomNavWidgets extends StatelessWidget {
  const AppBottomNavWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: AppColors.mainWhite,
        elevation: 6,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: null,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.navbarHome), label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.navbarShorts), label: 'Shorts'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppImages.navbarAdd,
                width: 40,
                height: 40,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.navbarSub),
              label: 'Subscriptions'),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.navbarLibrary),
            label: 'Library',
          )
        ]);
  }
}
