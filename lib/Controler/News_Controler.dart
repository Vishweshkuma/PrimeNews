import 'dart:convert';
import 'package:get/get_rx/get_rx.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

import '../Model/NewsModel.dart';

class NewsController extends GetxController {

  RxList<Article> newsFormTesla = <Article>[].obs;
  RxList<Article> newsFormTesla5 = <Article>[].obs;

  RxList<Article> newsFormTech = <Article>[].obs;
  RxList<Article> newsFormTech5 = <Article>[].obs;

  RxList<Article> newsFormApple = <Article>[].obs;
  RxList<Article> newsForApple5 = <Article>[].obs;

  RxList<Article> newsFromWallStreet= <Article>[].obs;
  RxList<Article> newsFromWallStreet5 = <Article>[].obs;

  RxList<Article> newsFormUS = <Article>[].obs;
  RxList<Article> newsFormUS5 = <Article>[].obs;




  RxBool isLoading = false.obs;
  RxBool isnewsFromTeslaLoading= false.obs;
  RxBool isnewsFromTechLoading= false.obs;
  RxBool isnewsFromAppleLoading= false.obs;
  RxBool isnewsfromWallStreetLoading= false.obs;
  RxBool isnewsFromUSLoading= false.obs;

  Future<void> getNewsFromTesla() async {
    isnewsFromTeslaLoading.value=true;
    const baseUrl = "https://newsapi.org/v2/everything?q=tesla&from=2024-06-29&sortBy=publishedAt&apiKey=21fefda7b5cc4592a4430eb1c1e3ba8b";
    try {

      final response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        final articles = body["articles"] as List<dynamic>;
        newsFormTesla.value = articles.map((e) => Article.fromJson(e)).toList();
        newsFormTesla5 = newsFormTesla.sublist(0,5).obs;
      } else {
        print("Something went wrong");
      }
    } catch (e) {
      print('Error: $e');
    } isnewsFromTeslaLoading.value=false;
  }//Tech

  Future<void> getNewsFromTech() async {
    isnewsFromTechLoading.value=true;
    final baseUrl = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=21fefda7b5cc4592a4430eb1c1e3ba8b";
    try {

      final response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        final articles = body["articles"] as List<dynamic>;
        newsFormTech.value = articles.map((e) => Article.fromJson(e)).toList();
        newsFormTech5 = newsFormTech.sublist(0,5).obs;
      } else {
        print("Something went wrong");
      }
    } catch (e) {
      print('Error: $e');
    } isnewsFromTechLoading.value=false;
  }//Tech

  Future<void> getnewsFromApple() async {
    isnewsFromAppleLoading.value=true;
    final baseUrl = "https://newsapi.org/v2/everything?q=apple&from=2024-07-28&to=2024-07-28&sortBy=popularity&apiKey=21fefda7b5cc4592a4430eb1c1e3ba8b";
    try {

      final response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        final articles = body["articles"] as List<dynamic>;
        newsFormApple.value = articles.map((e) => Article.fromJson(e)).toList();
        newsForApple5= newsFormApple.sublist(0,5).obs;
      } else {
        print("Something went wrong");
      }
    } catch (e) {
      print('Error: $e');
    } isnewsFromAppleLoading.value=false;
  }//Apple

  Future<void> getnewsFromWallStreet() async {
    isnewsfromWallStreetLoading.value=true;
    final baseUrl = "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=21fefda7b5cc4592a4430eb1c1e3ba8b";
    try {

      final response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        final articles = body["articles"] as List<dynamic>;
        newsFromWallStreet.value = articles.map((e) => Article.fromJson(e)).toList();
        newsFromWallStreet5= newsFromWallStreet.sublist(0,5).obs;
      } else {
        print("Something went wrong");
      }
    } catch (e) {
      print('Error: $e');
    }
    isnewsfromWallStreetLoading.value=false;
  }//From WallStreet

  Future<void> getnewsFromUS() async {

    isnewsFromTechLoading.value=true;
    final baseUrl = "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=21fefda7b5cc4592a4430eb1c1e3ba8b";
    try {

      final response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        final articles = body["articles"] as List<dynamic>;
        newsFormUS.value = articles.map((e) => Article.fromJson(e)).toList();
        newsFormUS5= newsFormUS.sublist(0,5).obs;
      } else {
        print("Something went wrong");
      }
    } catch (e) {
      print('Error: $e');
    }
    isnewsFromTechLoading.value=false;
  }

  @override
  void onInit() {
    getnewsFromApple();
    getNewsFromTech();
    getNewsFromTesla();
    getnewsFromWallStreet();
    getnewsFromUS();
    super.onInit();
  }
}
