import 'package:flutter/material.dart';

class EditingScreen extends StatelessWidget {
  const EditingScreen({Key? key}) : super(key: key);
  static const routeName = '/editing-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Telegram'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.sort),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ListTile(
              leading: Icon(Icons.group_outlined),
              title: Text('New Group'),
            ),
            const ListTile(
              leading: Icon(Icons.lock_outline),
              title: Text('New Secrete Chat'),
            ),
            const ListTile(
              leading: Icon(Icons.speaker_group_outlined),
              title: Text('New Channel'),
            ),
            const Divider(thickness: 10),
            const Center(
              child: Icon(
                Icons.emoji_people_rounded,
                color: Colors.grey,
                size: 100,
              ),
            ),
            const Text(
              'You have not contacts on Telegram yet',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            ListTile(
              horizontalTitleGap: 0,
              contentPadding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.08, bottom: 0),
              leading: Icon(
                Icons.star_border_outlined,
                size: Theme.of(context).iconTheme.size,
              ),
              title: Text(
                'Invite friends to try Telegram',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            ListTile(
              horizontalTitleGap: 0,
              contentPadding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.08),
              leading: Icon(
                Icons.star_border_outlined,
                size: Theme.of(context).iconTheme.size,
              ),
              title: Text(
                'Find people nearby to chat with',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            ListTile(
              horizontalTitleGap: 0,
              contentPadding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.08),
              leading: Icon(
                Icons.star_border_outlined,
                size: Theme.of(context).iconTheme.size,
              ),
              title: Text(
                'Search people by username',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.person_add),
      ),
    );
  }
}
