import 'package:flutter/material.dart';

import 'package:instagram_ui/components/account_pictures.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.lock,
                  color: Colors.black,
                  size: 30,
                ),
                Text(
                  "AF123",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                  size: 30,
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.add_box,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[400],
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'lib/images/image2.jpg',
                            fit: BoxFit.cover,
                          ),
                        )),
                  ),
                  const Text("AF123")
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 40),
                child: Column(
                  children: [
                    Text("0"),
                    Text("Posts"),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 40),
                child: Column(
                  children: [
                    Text("20.1k"),
                    Text("Followers"),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 40),
                child: Column(
                  children: [
                    Text("100"),
                    Text("Following"),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 170,
                  decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(8.0)),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Edit Profile",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 170,
                  decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(8.0)),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Share Profile",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                ),
                child: const Icon(
                  Icons.person_add,
                  color: Colors.white,
                  size: 30,
                ),
              )
            ],
          ),
          const Expanded(
            child: AccountPicture(),
          ),
        ],
      ),
    );
  }
}
