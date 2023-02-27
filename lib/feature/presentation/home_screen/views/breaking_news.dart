import 'package:flutter/material.dart';
import 'package:news_app/feature/presentation/home_screen/components/news_items_list.dart';

import 'package:news_app/feature/presentation/home_screen/data/model/breaking_news.dart';
import 'package:news_app/feature/presentation/home_screen/data/services/news_service.dart';

class BreakingNews extends StatelessWidget {
  const BreakingNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: NewsApiService().getBreakingNews(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.articles!.length,
              itemBuilder: ((context, index) {
                // news variable create
                Article breakingNews = snapshot.data!.articles![index];
                // constructor with data pass/ news pass
                return NewsListItem(breakingNews: breakingNews);
              }),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        }),
      ),
    );
  }
}