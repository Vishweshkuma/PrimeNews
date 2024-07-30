import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controler/Bottom_controler.dart';
class Navigationbar extends StatelessWidget {
   BottomControler bottomControler = Get.put(BottomControler());
   Navigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(0)
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Obx(()=>
             InkWell(
                onTap: (){
                  bottomControler.index.value=0;
                },
                child: AnimatedContainer(
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color:bottomControler.index.value==0 ? Colors.orange: null,
                        borderRadius: BorderRadius.circular(100)
                    ),
                    duration: Duration(microseconds: 300),
                    curve: Curves.bounceInOut,
                    child: Icon(Icons.home,color: Colors.white,size: 30,)),
              ),
            ),
            Obx(()=>
               InkWell(
                onTap: (){
                  bottomControler.index.value=1;
                },
                child: AnimatedContainer(
                    duration: Duration(microseconds: 300),
                    curve: Curves.bounceInOut,
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: bottomControler.index.value==1 ? Colors.orange: null,
                        borderRadius: BorderRadius.circular(100)
                    ),
                    child: Icon(Icons.book,color: Colors.white,size: 30,)),
              ),
            ),
            Obx(()=>
               InkWell(
                onTap: (){
                  bottomControler.index.value=2;
                },
                child: AnimatedContainer(
                    duration: Duration(microseconds: 300),
                    curve: Curves.bounceInOut,
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: bottomControler.index.value==2 ? Colors.orange: null,
                        borderRadius: BorderRadius.circular(100)
                    ),
                    child: Icon(Icons.settings,color: Colors.white,size: 30,)),
              ),
            ),
            Obx(()=>
               InkWell(
                onTap: (){
                  bottomControler.index.value=3;
                },
                child: AnimatedContainer(
                    duration: Duration(microseconds: 300),
                    curve: Curves.bounceInOut,
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: bottomControler.index.value==3? Colors.orange: null,
                        borderRadius: BorderRadius.circular(100)
                    ),
                    child: Icon(Icons.person,color: Colors.white,size: 30,)),
              ),
            ),

          ],
        ),


      );

  }
}
