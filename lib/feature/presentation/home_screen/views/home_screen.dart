import 'package:flutter/material.dart';
import 'package:news_app/feature/presentation/home_screen/views/all_news.dart';
import 'package:news_app/feature/presentation/home_screen/views/breaking_news.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("News"),
          centerTitle: true,
          automaticallyImplyLeading: false,
          bottom: const TabBar(tabs: [
            Text("Breaking"),
            Text("All News"),
            
          ]),
        ),
        body: TabBarView(children: [
          BreakingNews(),
          AllNews(),
          
        ]),
      ),
    );
  }
}
