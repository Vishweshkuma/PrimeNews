import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TrandingCards extends StatelessWidget {
  final String imageUrl;
  final String tag;
  final DateTime time;
  final String title;
  final String auther;
  final VoidCallback ontap;

  const TrandingCards(
      {super.key,
      required this.imageUrl,
      required this.tag,
      required this.time,
      required this.title,
      required this.auther,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    String formattedTime = DateFormat('dd MMM yyyy, hh:mm a').format(time);
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.all(5),
        //  height: 300,
        width: 280,
        decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black45),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Center(
                      child: Icon(
                        Icons.broken_image,
                        color: Colors.red,
                        size: 50,
                      ),
                    );
                  },
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                (loadingProgress.expectedTotalBytes ?? 1)
                            : null,
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    tag,
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ),
                Flexible(
                  child: Text(formattedTime,
                      style: TextStyle(fontSize: 13, color: Colors.white)),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Flexible(
                  child: Text(
                    maxLines: 2,
                    title,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.orange,
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Text(
                    maxLines: 1,
                    auther,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
