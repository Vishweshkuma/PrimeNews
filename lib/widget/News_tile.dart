import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class NewsTile extends StatelessWidget {
  final String imageUrl;
  final String author;
  final String title;
  final DateTime? time;
  final VoidCallback ontap;
  const NewsTile({super.key, required this.imageUrl, required this.author, required this.title,  this.time, required this.ontap});

  @override
  Widget build(BuildContext context) {
    String formattedTime = DateFormat('dd MMM yyyy, hh:mm a').format(time!);
    return Column(
      children: [
        InkWell(
          onTap: ontap,
          child: Container(
            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.all(10),
            //height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black26,
            ),
            child: Row(
              children: [
               Container(
                    decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),

                        child: Image.network(
                       " ${imageUrl}",
                          fit: BoxFit.cover,
                        )),

                    height: 100,
                    width: 150,
                  ),

                SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.orange,
                          ),SizedBox(
                            width: 10,
                          ),
                          Text(
                            author,
                            maxLines: 1,
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Text(
                        maxLines: 2,
                        title,
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(height: 15,),
                      Text(formattedTime,
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),

                    ],
                  ),
                ),



              ],
            ),

          ),
        ),
      ],
    );
  }
}
