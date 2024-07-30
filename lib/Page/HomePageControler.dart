import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../Controler/Bottom_controler.dart';
import '../components/Navigationbar.dart';

class Homepagecontroler extends StatelessWidget {
  BottomControler bottomControler = Get.put(BottomControler());
  Homepagecontroler({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:Navigationbar(),
      body:Obx(()=>bottomControler.pages[bottomControler.index.value]) ,
    );
  }
}
