import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Model/telegramProvider.dart';
import '../Widgets/searching.dart';
import '../Widgets/types_of_groups.dart';
import 'editng_screen.dart';
import 'telegram_drawer.dart';

class TelegramMain extends StatefulWidget {
  const TelegramMain({Key? key}) : super(key: key);
  static const routeName = '/telegram-main';
  @override
  State<TelegramMain> createState() => _TelegramMainState();
}

class _TelegramMainState extends State<TelegramMain> {
  @override
  Widget build(BuildContext context) {
    final people = Provider.of<TelegramProvider>(context);

    return DefaultTabController(
      length: 6,
      child: Scaffold(
        drawer: Drawer(
          elevation: 10,
          width: MediaQuery.of(context).size.width * 0.75,
          child: const TelegramDrawer(),
        ),
        body: NestedScrollView(
          headerSliverBuilder: ((context, innerBoxIsScrolled) => [
                SliverAppBar(
                  elevation: 10,
                  backgroundColor: Colors.blue,
                  actions: [
                    IconButton(
                      onPressed: () {
                        showSearch(
                          context: context,
                          delegate: Search(people),
                        );
                      },
                      icon: const Icon(Icons.search),
                    ),
                  ],
                  title: const Text('Telegram'),
                  floating: true,
                  snap: true,
                  stretch: true,
                  bottom: TabBar(
                    labelStyle: const TextStyle(fontSize: 17),
                    isScrollable: true,
                    padding: const EdgeInsets.only(left: 10),
                    indicatorColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorWeight: 3,
                    tabs: [
                      Tab(
                        child: Row(children: const [
                          Text('All'),
                          Chip(
                            label: Text('20'),
                            labelPadding: EdgeInsets.all(0),
                          ),
                        ]),
                      ),
                      const Tab(text: 'Private'),
                      const Tab(text: 'Groups'),
                      const Tab(text: 'Channels'),
                      const Tab(text: 'Bot'),
                      const Tab(text: 'Personal'),
                    ],
                  ),
                ),
              ]),
          body: TabBarView(
            children: [
              Tab(
                height: 1000,
                child: TypesOfGroups(),
              ),
              const Tab(child: Text('asdfafa')),
              const Tab(child: Text('asdfafa')),
              const Tab(child: Text('asdfafa')),
              const Tab(child: Text('asdfafa')),
              const Tab(child: Text('asdfafa')),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.edit),
          onPressed: () {
            Navigator.of(context).pushNamed(
              EditingScreen.routeName,
            );
          },
        ),
      ),
    );
  }
}
