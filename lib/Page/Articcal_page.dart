import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getstorageandemailvalidation/Controler/News_Controler.dart';

import '../widget/News_tile.dart';
import '../widget/Search_widget.dart';
import 'News_details_page.dart';

class ArticcalPage extends StatelessWidget {
  NewsController newsController=Get.put(NewsController());

   ArticcalPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SearchWidget(),
                SizedBox(height: 10,),
                Column(
                 children: [
                   Obx(
                         () => newsController.isnewsFromTechLoading.value?CircularProgressIndicator():Column(
                         children: newsController.newsFromWallStreet
                             .map((e) => NewsTile(
                           imageUrl: e.urlToImage!,
                           author: e.author! ?? "Unknown",
                           title: e.title,
                           time: e.publishedAt,
                           ontap: () {
                             Get.to(NewsDetailsPage(news: e));
                           },
                         )
                         )
                             .toList()),
                   ),
                 ],
                )

            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
