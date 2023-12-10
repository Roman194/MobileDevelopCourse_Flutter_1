import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/mainContent.dart';
import 'package:flutter_application_1/settings.dart';
import 'package:flutter_application_1/silverBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sber App',
      theme: ThemeData(
        fontFamily: 'SFProText',
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: colorAppScheme),
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              silverBarWidget(),
            ];
          },
          body: const TabBarView(
            children: [MainContentWidget(), settingsWidget()],
          ),
        ),
      ),
    );
  }
}
