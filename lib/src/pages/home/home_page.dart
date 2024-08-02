import 'package:flutter/material.dart';
import 'package:myapp/src/components/app_bar_component.dart';
import 'package:myapp/src/components/options_navigator_bar.dart';
import 'package:myapp/src/components/circle_avatar_component.dart';
import 'package:myapp/src/components/feed_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    const colorHeader = Colors.white;
    int indexPage = 0;

    return Scaffold(
      // appBar: const AppBarComponent(),
      appBar: AppBar(
        backgroundColor: colorHeader,
        title: const Text('Instagram'),
        actions: const [
          BottomAppBar(
            color: colorHeader,
            child: Row(
              children: [
                BottomAppBar(
                  color: colorHeader,
                  child: Icon(Icons.favorite_border),
                ),
                BottomAppBar(
                  color: colorHeader,
                  child: Icon(Icons.messenger_outline_rounded),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        currentIndex: indexPage,
        onTap: (index) {
          setState(() {
            indexPage = index;
          });
        },
        // items: OptionsNavigatorBar(),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_call_outlined),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Add',
          ),
        ],
      ),
      body: IndexedStack(
        index: indexPage,
        children: [
          Column(
            children: [
              const CircleAvatarComponent(),
              Divider(
                height: 1,
                color: Colors.grey[300],
              ),
              const Expanded(child: FeedComponent()),
            ],
          ),
        ],
      ),
    );
  }
}
