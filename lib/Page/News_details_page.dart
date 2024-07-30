import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Model/NewsModel.dart';

class NewsDetailsPage extends StatelessWidget {
  final Article news;

  const NewsDetailsPage({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      Get.back();
                    },
                    child: Container(
                      child: Row(
                        children: [Icon(Icons.arrow_back_ios_new,color: Colors.white,),
                          Text("Back",style: TextStyle(color: Colors.white),)],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30,),
              Container(
                height: 330,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    Expanded(child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
              child: Image.network(news.urlToImage!,fit: BoxFit.cover,)))
                  ],
                ),
              ),
              SizedBox(height: 20,),

                 Text(news.title,
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 18,
                     fontWeight: FontWeight.bold,
                   ),),
              SizedBox(height: 10,),
              Text("${news.author}* ${news.publishedAt}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),),

              SizedBox(height: 20,),
              Row(
                children: [
                  CircleAvatar(
                    child: Text(news.author![0],style: TextStyle(color: Colors.white,),),
                    radius: 12,
                    backgroundColor: Colors.orange,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    news.author!,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Text(
               // news.description,
                news.description!,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),

          
            ],
          ),
        ),
      ),
    );
  }
}
