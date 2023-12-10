import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/fonts.dart';
import 'package:flutter_application_1/constants/numerals.dart';
import 'package:flutter_application_1/constants/texts.dart';
import 'package:flutter_application_1/widgets/header.dart';

class silverBarWidget extends StatelessWidget {
  const silverBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: false,
      expandedHeight: silverExpandHeight,
      leading: IconButton(
        icon: Icon(Icons.close, color: iconsColor),
        iconSize: silverIconsSize,
        onPressed: () {
          print(onIconBackClick);
        },
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.logout,
            color: iconsColor,
          ),
          iconSize: silverIconsSize,
          onPressed: () {
            print(onIconLogOutClick);
          },
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        background: Padding(
          padding: const EdgeInsets.only(top: silverPaddingSize),
          child: HeaderWidget(),
        ),
      ),
      bottom: TabBar(
        tabs: [Tab(text: tabLabelOne), Tab(text: tabLabelTwo)],
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: tabBarColor,
        labelColor: labelTabBarColor,
        labelStyle: tabBarLabel,
      ),
    );
  }
}
