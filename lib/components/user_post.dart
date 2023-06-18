import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
   const UserPost({super.key, required this.name , required this.imagePath});

  final String name;
  final String imagePath;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                  ),
                ),
                Text(name),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Icon(Icons.more_horiz),
            ),
          ],
        ),
        //Profile Photo
        Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[400],
          ),
          child: Image.asset(
           imagePath,
            fit: BoxFit.cover,
          ),
        ),
        //Button below picture
        const Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_border_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.chat_bubble_outline_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.navigate_next_sharp),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              Icon(Icons.bookmark)
            ],
          ),
        ),
        // Liked by other user
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.all(2.0),
              child: Text(
                "Liked by Fauzan Rahman and others",
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
        //Caption of the picture
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 12.0, color: Colors.black),
              children: [
                TextSpan(
                  text: 'Ashraf Firdaus',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: ' - '),
                TextSpan(
                  text: 'Capturing the beauty of Belgium: ',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                TextSpan(
                    text:
                        'Vibrant streets, picturesque canals, and mouthwatering waffles'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
