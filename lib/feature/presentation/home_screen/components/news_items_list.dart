import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/feature/presentation/home_screen/components/placeholder_effect.dart';
import 'package:news_app/feature/presentation/home_screen/data/model/all_news_model.dart';
import 'news_details.dart';

class NewsListItem extends StatelessWidget {
  NewsListItem({super.key, required this.newsItemWidget});

  var newsItemWidget;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (_) => NewsDetails(newsDetailsWidget: newsItemWidget),
          ),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 9.0),
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedNetworkImage(
                fit: BoxFit.fitWidth,
                width: double.infinity,
                height: 250.0.h,
                imageUrl: newsItemWidget.urlToImage.toString(),
                placeholder: (context, url) => const PlaceholderEffect(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              SizedBox(height: 10.0.h),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10.0.r),
                    ),
                    child: Text(
                      // ignore: prefer_if_null_operators
                      newsItemWidget.source!.name == null
                          ? ""
                          : newsItemWidget.source!.name.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0.w),
              Text(newsItemWidget.publishedAt.toString()),
              SizedBox(height: 5.0.h),
              Text(
                newsItemWidget.title.toString(),
                style:
                    TextStyle(fontSize: 20.0.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8.0.h),
              newsItemWidget.author == null
                  ? const SizedBox(height: 6.0)
                  : Text(
                      "Written by: ${newsItemWidget.author}",
                      style: TextStyle(fontSize: 14.0.sp),
                    ),
              SizedBox(height: 8.0.h),
            ],
          ),
        ),
      ),
    );
  }
}
