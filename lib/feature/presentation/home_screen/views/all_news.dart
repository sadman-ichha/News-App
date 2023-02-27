import 'package:flutter/material.dart';
import 'package:news_app/feature/presentation/home_screen/components/news_items_list.dart';
import 'package:news_app/feature/presentation/home_screen/data/model/all_news_model.dart';
import 'package:news_app/feature/presentation/home_screen/data/services/news_service.dart';

class AllNews extends StatelessWidget {
  //const AllNews({super.key});

  NewsApiService newsApi = NewsApiService();

  NewsModel? allNews;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: FutureBuilder(
        //   future: newsApi.getAllNews(),
        //   builder: ((context, snapshot) {
        //     if (snapshot.hasData) {
        //       return ListView.builder(
        //         itemCount:
        //             allNews!.articles == null ? 0 : allNews!.articles!.length,
        //         itemBuilder: ((context, index) {
        //           return NewsListItem(newsModel: allNews!.articles![index]);
        //         }),
        //       );
        //     }
        //     return const Center(
        //       child: CircularProgressIndicator(),
        //     );
        //   }),
        // ),
        );
  }
}
