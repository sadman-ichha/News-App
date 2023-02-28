import 'package:flutter/material.dart';
import 'package:news_app/feature/presentation/home_screen/components/news_items_list.dart';

import 'package:news_app/feature/presentation/home_screen/data/model/breaking_news.dart';
import 'package:news_app/feature/presentation/home_screen/data/services/news_service.dart';

class AllNews extends StatelessWidget {
  const AllNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: NewsApiService().getAllNews(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.articles!.length,
              itemBuilder: ((context, index) {
                // news variable create
                var allNews =  snapshot.data!.articles![index];
                // constructor with data pass/ news pass
                return NewsListItem(newsItemWidget: allNews);
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
