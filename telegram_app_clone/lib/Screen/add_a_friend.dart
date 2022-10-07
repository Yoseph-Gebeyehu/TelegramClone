import 'package:flutter/material.dart';
import 'package:telegram_app_clone/Widgets/country_name.dart';

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
      body: SingleChildScrollView(
        child: Column(
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
                  hintStyle: TextStyle(
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
                  hintStyle: TextStyle(
                    overflow: TextOverflow.visible,
                    fontFamily: 'QuickSand',
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (_) {
                      return const CountryName();
                    });
              },
              child: const Padding(
                padding:
                    EdgeInsets.only(top: 15, right: 15, bottom: 15, left: 55),
                child: Text(
                  'Ethiopia',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'QuickSand',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Divider(
              height: 1,
              indent: 55,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 55),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Phone no.',
                  hintStyle: TextStyle(
                    overflow: TextOverflow.visible,
                    fontFamily: 'QuickSand',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
