import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/feature/presentation/home_screen/data/model/all_news_model.dart';
import 'package:news_app/feature/presentation/home_screen/data/model/breaking_news.dart';

class NewsApiService {
  final allNewsUri = Uri.parse(
      "https://newsapi.org/v2/everything?q=tesla&from=2023-01-27&sortBy=publishedAt&apiKey=972a8deaa6b74efcb39de65ff6d6bdfd");

  final breakingNewsUri = Uri.parse(
      "https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=972a8deaa6b74efcb39de65ff6d6bdfd");

  Future<NewsModel?> getAllNews() async {
    try {
      http.Response response = await http.get(allNewsUri);

      if (response.statusCode == 200) {
        Map<String, dynamic> jsonData = jsonDecode(response.body);

        return NewsModel.fromJson(jsonData);
      } else {
        throw ("No artile found");
      }
    } catch (e) {
      throw (e.toString());
    }
  }

  Future<BreakingNewsModel?> getBreakingNews() async {
    try {
      http.Response response = await http.get(breakingNewsUri);

      if (response.statusCode == 200) {
        Map<String, dynamic> jsonData = jsonDecode(response.body);
        print("aaaaaaaaaaaaaaaaaaaaaaaaaaa $jsonData");
        return BreakingNewsModel.fromJson(jsonData);
      } else {
        throw ("No artile found");
      }
    } catch (e) {
      throw (e.toString());
    }
  }
}
