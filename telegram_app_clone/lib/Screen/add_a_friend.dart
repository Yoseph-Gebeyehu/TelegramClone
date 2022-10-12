import 'package:flutter/material.dart';
import 'package:telegram_app_clone/Model/telegram.dart';
import 'package:telegram_app_clone/Provider/telegramProvider.dart';
import 'package:telegram_app_clone/Widgets/country_name.dart';
import 'package:provider/provider.dart';

class AddFriendScreen extends StatefulWidget {
  // const AddFriendScreen({Key? key}) : super(key: key);
  static const routeName = '/add-friends';
  // final Function addFriend;
  // AddFriendScreen(this.addFriend);
  @override
  State<AddFriendScreen> createState() => _AddFriendScreenState();
}

class _AddFriendScreenState extends State<AddFriendScreen> {
  void addFriend(String nameTg, String phoneNo) {
    final add = TelegramModel(
      name: nameTg,
      imageName: '',
      description: 'description',
      date: 'Oct',
      id: '6',
      lastSeen: 'lastSeen',
    );
    setState(() {
      Provider.of<TelegramProvider>(context).userList.add(add);
    });
  }

  final _firstNameController = TextEditingController();

  final _lastNameController = TextEditingController();

  final _phoneNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Telegram'),
        actions: [
          IconButton(
            onPressed: () {
              addFriend(
                _firstNameController.text,
                _phoneNoController.text,
              );
            },
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
            Padding(
              padding: const EdgeInsets.only(left: 55),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'First name (required)',
                  hintStyle: TextStyle(
                    overflow: TextOverflow.visible,
                    fontFamily: 'QuickSand',
                  ),
                ),
                controller: _firstNameController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Last name (required)',
                  hintStyle: TextStyle(
                    overflow: TextOverflow.visible,
                    fontFamily: 'QuickSand',
                  ),
                ),
                controller: _lastNameController,
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (_) {
                      return  CountryName();
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
            Padding(
              padding: const EdgeInsets.only(left: 55),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Phone no.',
                  hintStyle: TextStyle(
                    overflow: TextOverflow.visible,
                    fontFamily: 'QuickSand',
                  ),
                ),
                controller: _phoneNoController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
