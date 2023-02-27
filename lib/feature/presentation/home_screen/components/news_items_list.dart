import 'package:flutter/material.dart';
import 'package:news_app/feature/presentation/home_screen/data/model/breaking_news.dart';

class NewsListItem extends StatelessWidget {
  const NewsListItem({Key? key, required this.breakingNews}) : super(key: key);

  final Article? breakingNews;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12.0),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(breakingNews!.author.toString()),
        ],
      ),
    );
  }
}
