import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/widget/ads_widget.dart';
import 'package:youtube_clone/ui/widget/card_widget.dart';
import 'package:youtube_clone/ui/widget/app_navigations_widgets.dart';
import 'package:youtube_clone/ui/widget/shorts_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder: (context, innerBoxIsScrolled) =>
                [const AppHeaderWidget()],
            body: ListView(
              padding: EdgeInsets.zero,
              children: const [
                AdsWidget(),
                CardWidget(),
                SizedBox(
                  height: 8,
                ),
                ShortsWidget(),
                CardContainer()
              ],
            )),
        bottomNavigationBar: const AppBottomNavWidgets());
  }
}
