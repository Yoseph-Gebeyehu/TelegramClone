import 'package:flutter/material.dart';

class TelegramDrawer extends StatelessWidget {
  const TelegramDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 150,
            color: Colors.blue,
            child: SizedBox(
              width: double.infinity,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                            'Assets/Images/rowan-kyle-m663zRzRe40-unsplash.jpg',
                          ),
                        ),
                        Icon(
                          Icons.dark_mode,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Jossy',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    // const SizedBox(height: 1),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '+251918292773',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white54,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.expand_less,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.group_outlined),
              onPressed: () {},
            ),
            title: const Text('New Group'),
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.person_outline),
              onPressed: () {
                // Navigator.of(context).pushNamed(TelegramGrid.routeName);
              },
            ),
            title: const Text('Contacts'),
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.call_outlined),
              onPressed: () {},
            ),
            title: const Text('Calls'),
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.bookmark_border),
              onPressed: () {},
            ),
            title: const Text('Saved Messages'),
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.settings_outlined),
              onPressed: () {},
            ),
            title: const Text('Settings'),
          ),
          const Divider(
            thickness: 1.5,
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.person_add_alt_1_outlined),
              onPressed: () {},
            ),
            title: const Text('Add Friends'),
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.question_mark_outlined),
              onPressed: () {},
            ),
            title: const Text('Telegram Features'),
          ),
        ],
      ),
    );
  }
}
