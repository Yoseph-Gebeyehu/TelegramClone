import 'package:flutter/material.dart';

class TelegramMain extends StatefulWidget {
  const TelegramMain({Key? key}) : super(key: key);

  @override
  State<TelegramMain> createState() => _TelegramMainState();
}

class _TelegramMainState extends State<TelegramMain> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        drawer: const Drawer(),
        body: NestedScrollView(
          headerSliverBuilder: ((context, innerBoxIsScrolled) => [
                SliverAppBar(
                  elevation: 10,
                  backgroundColor: Colors.blue,
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                      ),
                    )
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
          body: const TabBarView(
            children: [
              Tab(child: Text('All')),
              Tab(child: Text('Private')),
              Tab(child: Text('Groups')),
              Tab(child: Text('Channels')),
              Tab(child: Text('Bot')),
              Tab(child: Text('Personal')),
            ],
          ),
        ),
      ),
    );
  }
}
