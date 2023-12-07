import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/header.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          fontFamily: 'SFProText',
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();

  void getNew() {
    current = WordPair.random();
    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;
    IconData icon = Icons.favorite_border;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 225,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 44.0),
            child: HeaderWidget(),
          ),
          bottom: TabBar(
            tabs: [Tab(text: 'Профиль'), Tab(text: 'Настройки')],
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Color(0xFF068441),
            labelColor: Colors.black,
            labelStyle: TextStyle(fontFamily: 'SFProText', fontSize: 16.0),
          ),
        ),
        body: TabBarView(
          children: [BigCards(pair: pair), BigCards(pair: pair)],
        ),
      ),
    );
  }
}

class BigCards extends StatelessWidget {
  const BigCards({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Card(
          color: theme.colorScheme.primary,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(pair.asLowerCase, style: style),
          ),
        ),
      ],
    );
  }
}
