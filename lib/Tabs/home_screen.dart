// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:instagram_ui/components/circle_container.dart';
import 'package:instagram_ui/components/user_post.dart';

class UserHome extends StatelessWidget {
  UserHome({super.key});

  final List instaName = [
    "Ashraf Firdaus",
    "Syed Aiman",
    "Shahril Azwan",
    "Fauzan Rahman",
    "Syaqir Ohtman",
    "Ammar Hakim",
    "Haiqal",
    "Aiman Azhar"
  ];

  final List instaImages = [
    'lib/images/image1.jpg',
    'lib/images/image2.jpg',
    'lib/images/image3.jpg',
    'lib/images/image4.jpg',
    'lib/images/image5.jpg',
    'lib/images/image6.jpg',
    'lib/images/image7.jpg',
    'lib/images/image8.jpg',
    'lib/images/image9.jpg',
    'lib/images/image10.jpg',
    'lib/images/image11.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Instagram",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: AutofillHints.url),
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.chat_bubble_outline_outlined,
                      color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(8),
                  itemCount: instaName.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CircleContainer(
                      text: instaName[index],
                    );
                  }),
            ),
            UserPost(
              name: 'Ashraf Firdaus',
              imagePath: instaImages[9],
            ),
            UserPost(
              name: 'Fauzan Rahman',
              imagePath: instaImages[10],
            ),
          ],
        ),
      ),
    );
  }
}
