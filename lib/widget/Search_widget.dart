
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          Expanded(
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Search news....",
                  hintStyle: TextStyle(color: Colors.white),

                  fillColor: Colors.black26,
                  filled: true,
                  border: InputBorder.none,
                ),
              )),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Icon(Icons.search),
          )
        ],
      ),
    );
  }
}
