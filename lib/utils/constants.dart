import 'package:flutter/material.dart';

abstract class AppColors {
  static const mainRed = Color(0xFFFF0000);
  static const mainBlack = Color(0xFF000000);
  static const mainWhite = Color(0xFFFFFFFF);
  static const mainGrey = Color.fromRGBO(0, 0, 0, 0.05);
}

class AppImages {
  AppImages._();

  static const String navbarHome = 'assets/svg/navbar_home.svg';
  static const String navbarShorts = 'assets/svg/navbar_shorts.svg';
  static const String navbarSub = 'assets/svg/navbar_sub.svg';
  static const String navbarLibrary = 'assets/svg/navbar_library.svg';
  static const String navbarAdd = 'assets/svg/navbar_add.svg';
  static const String explore = 'assets/svg/explore.svg';
  static const String notification = 'assets/svg/notification.svg';
  static const String searchIcon = 'assets/svg/search_icon.svg';
  static const String youtubeLogo = 'assets/svg/youtube_logo.svg';
  static const String more = 'assets/img/more.png';

  static const String shortsRed = 'assets/img/shorts_red.png';

  static const String appbarProfileIcon = 'assets/img/appbar_profile-icon.jpg';
  static const String logo1 = 'assets/img/logo1.jpg';
  static const String logo2 = 'assets/img/logo2.jpg';
  static const String logo3 = 'assets/img/logo3.jpg';
  static const String logo4 = 'assets/img/logo4.jpg';
  static const String logo5 = 'assets/img/logo5.jpg';
  static const String video1 = 'assets/img/video1.jpg';
  static const String video2 = 'assets/img/video2.jpg';
  static const String video3 = 'assets/img/video3.jpg';
  static const String video4 = 'assets/img/video4.jpg';
  static const String video5 = 'assets/img/video5.jpg';
  static const String shorts1 = 'assets/img/shorts1.jpg';
  static const String shorts2 = 'assets/img/shorts2.jpg';
  static const String shorts3 = 'assets/img/shorts3.jpg';
  static const String shorts4 = 'assets/img/shorts4.jpg';
  static const String shorts5 = 'assets/img/shorts5.jpg';
  static const String ads = 'assets/img/ads.jpg';
}

abstract class AppTextStyle {
  static const cardTextStyle = TextStyle(
      color: AppColors.mainBlack, fontSize: 18, fontWeight: FontWeight.w500);
}
