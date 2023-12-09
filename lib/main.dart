import 'package:flutter/material.dart';
import 'package:flutter_application_1/header.dart';
import 'package:flutter_application_1/mainContent.dart';
import 'package:flutter_application_1/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Namer App',
      theme: ThemeData(
        fontFamily: 'SFProText',
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
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
              SliverAppBar(
                pinned: true,
                floating: false,
                expandedHeight: 275,
                leading: IconButton(
                  padding: const EdgeInsets.all(0.0),
                  icon: Icon(Icons.close, color: Color(0xFF08A652)),
                  iconSize: 24.0,
                  onPressed: () {
                    print('IconBackPressed');
                  },
                ),
                actions: [
                  IconButton(
                    padding: const EdgeInsets.all(0.0),
                    icon: Icon(
                      Icons.logout,
                      color: Color(0xFF08A652),
                    ),
                    iconSize: 24.0,
                    onPressed: () {
                      print('IconLogOutPressed');
                    },
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Padding(
                    padding: const EdgeInsets.only(top: 44.0),
                    child: HeaderWidget(),
                  ),
                ),
                bottom: TabBar(
                  tabs: [Tab(text: 'Профиль'), Tab(text: 'Настройки')],
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Color(0xFF068441),
                  labelColor: Colors.black,
                  labelStyle:
                      TextStyle(fontFamily: 'SFProText', fontSize: 16.0),
                ),
              ),
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
