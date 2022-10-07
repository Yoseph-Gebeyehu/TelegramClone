import 'package:flutter/material.dart';

class AddFriendScreen extends StatelessWidget {
  const AddFriendScreen({Key? key}) : super(key: key);
  static const routeName = '/add-friends';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Telegram'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.save_rounded),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: 10, left: MediaQuery.of(context).size.width * 0.4),
            child: const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blue,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 55),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'First name (required)',
                labelStyle: TextStyle(
                  overflow: TextOverflow.visible,
                  fontFamily: 'QuickSand',
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 55),
            child: TextField(
              decoration: InputDecoration(

                hintText: 'Last name (required)',
                labelStyle: TextStyle(
                  overflow: TextOverflow.visible,
                  fontFamily: 'QuickSand',
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'Ethiopia',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'QuickSand',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(
            height: 1,
            indent: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 15),
                    child: Text(
                      '+251',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'QuickSand',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25, top: 15),
                    child: Text(
                      '-- --- ----',
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'QuickSand',
                          fontWeight: FontWeight.w300,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
              // Row(
              //   children: const [
              //     Padding(
              //       padding: EdgeInsets.only(left: 15),
              //       child: Divider(
              //         endIndent: 215,
              //       ),
              //     ),
              //     Divider(),
              //   ],
              // ),
            ],
          )
        ],
      ),
    );
  }
}
