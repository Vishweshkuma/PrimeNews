import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getstorageandemailvalidation/Page/News_details_page.dart';
import 'package:getstorageandemailvalidation/widget/News_tile.dart';
import 'package:getstorageandemailvalidation/widget/Tranding_cards.dart';

import '../Controler/News_Controler.dart';

class HomePage extends StatelessWidget {
  final NewsController newsControler = Get.put(NewsController());
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      // backgroundColor: Colors.white,

      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.dashboard,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  Text(
                    "PrimeNews",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      letterSpacing: 1.5,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      newsControler.getNewsFromTech();
                      newsControler.getNewsFromTesla();
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hottest News",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Obx(
                  () => newsControler.isnewsFromAppleLoading.value
                      ? CircularProgressIndicator()
                      : Row(
                          children: newsControler.newsFormApple
                              .map((article) => TrandingCards(
                                    imageUrl: article.urlToImage ?? '',
                                    tag:
                                        'Trending', // Or any other appropriate value
                                    time: article.publishedAt,
                                    title: article.title,
                                    auther: article.author ?? "Unknown",
                                    ontap: () {
                                      Get.to(NewsDetailsPage(news: article));
                                    },
                                  ))
                              .toList(),
                        ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tech News",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Obx(
                () => newsControler.isnewsFromTechLoading.value?CircularProgressIndicator():Column(
                    children: newsControler.newsFormTech5
                        .map((e) => NewsTile(
                      imageUrl: e.urlToImage!,
                      author: e.author! ?? "Unknown",
                      title: e.title,
                      time: e.publishedAt,
                      ontap: () {
                        Get.to(NewsDetailsPage(news: e));
                      },
                    ))
                        .toList()),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "US News",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Obx(
                    () => newsControler.isnewsFromTechLoading.value?CircularProgressIndicator():Column(
                    children: newsControler.newsFromWallStreet5
                        .map((e) => NewsTile(
                      imageUrl: e.urlToImage!,
                      author: e.author! ?? "Unknown",
                      title: e.title,
                      time: e.publishedAt,
                      ontap: () {
                        Get.to(NewsDetailsPage(news: e));
                      },
                    ))
                        .toList()),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Apple News",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Obx(
                    () => newsControler.isnewsFromTechLoading.value?CircularProgressIndicator():Column(
                    children: newsControler.newsForApple5
                        .map((e) => NewsTile(
                      imageUrl: e.urlToImage!,
                      author: e.author! ?? "Unknown",
                      title: e.title,
                      time: e.publishedAt,
                      ontap: () {
                        Get.to(NewsDetailsPage(news: e));
                      },
                    ))
                        .toList()),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hottest News",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Obx(
                      () => newsControler.isnewsFromAppleLoading.value
                      ? CircularProgressIndicator()
                      : Row(
                    children: newsControler.newsFormTesla5
                        .map((article) => TrandingCards(
                      imageUrl: article.urlToImage ?? '',
                      tag:
                      'Trending', // Or any other appropriate value
                      time: article.publishedAt,
                      title: article.title,
                      auther: article.author ?? "Unknown",
                      ontap: () {
                        Get.to(NewsDetailsPage(news: article));
                      },
                    ))
                        .toList(),
                  ),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
