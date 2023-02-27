// To parse this JSON data, do
//
//     final breakingNewsModel = breakingNewsModelFromJson(jsonString);

import 'dart:convert';

BreakingNewsModel breakingNewsModelFromJson(String str) =>
    BreakingNewsModel.fromJson(json.decode(str));

String breakingNewsModelToJson(BreakingNewsModel data) =>
    json.encode(data.toJson());

class BreakingNewsModel {
  BreakingNewsModel({
    this.status,
    this.totalResults,
    this.articles,
  });

  String? status;
  int? totalResults;
  List<Article>? articles;

  factory BreakingNewsModel.fromJson(Map<String, dynamic> json) =>
      BreakingNewsModel(
        status: json["status"],
        totalResults: json["totalResults"],
        articles: List<Article>.from(
            json["articles"].map((x) => Article.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "totalResults": totalResults,
        "articles": List<dynamic>.from(articles!.map((x) => x.toJson())),
      };
}

class Article {
  Article({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  Source? source;
  Author? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  DateTime? publishedAt;
  String? content;

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        source: Source.fromJson(json["source"]),
        author: authorValues.map[json["author"]],
        title: json["title"],
        description: json["description"],
        url: json["url"],
        urlToImage: json["urlToImage"],
        publishedAt: DateTime.parse(json["publishedAt"]),
        content: json["content"],
      );

  Map<String, dynamic> toJson() => {
        "source": source!.toJson(),
        "author": authorValues.reverse[author],
        "title": title,
        "description": description,
        "url": url,
        "urlToImage": urlToImage,
        "publishedAt": publishedAt!.toIso8601String(),
        "content": content,
      };
}

enum Author { BBC_NEWS }

final authorValues = EnumValues({"BBC News": Author.BBC_NEWS});

class Source {
  Source({
    this.id,
    this.name,
  });

  Id? id;
  Author? name;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        id: idValues.map[json["id"]],
        name: authorValues.map[json["name"]],
      );

  Map<String, dynamic> toJson() => {
        "id": idValues.reverse[id],
        "name": authorValues.reverse[name],
      };
}

enum Id { BBC_NEWS }

final idValues = EnumValues({"bbc-news": Id.BBC_NEWS});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
