import 'package:get/get.dart';
import 'package:getstorageandemailvalidation/Page/Articcal_page.dart';
import 'package:getstorageandemailvalidation/Page/HomePage.dart';
import 'package:getstorageandemailvalidation/Page/ProfilePage.dart';
import 'package:getstorageandemailvalidation/Page/Settings_page.dart';

class BottomControler extends GetxController{
RxInt index = 0.obs;
var pages =[
  HomePage(),
  ArticcalPage(),
  SettingsPage(),
  Profilepage()

];

}