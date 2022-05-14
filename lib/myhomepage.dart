import 'package:call_dr/page/search_page.dart';
import 'package:call_dr/testimonials.dart';
import 'package:flutter/material.dart';

import 'explore.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  PageController pageController = PageController();

  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        title: const Text('Doctor A Ti'),
        backgroundColor: Colors.transparent,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
                backgroundImage: AssetImage('images/carlos_hidalgo.png')),
          )
        ],
      ),
      body: PageView(
        controller: pageController,
        children: const <Widget>[
          Explore(),
          Search(),
          Testimony(),
        ],
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade100,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.black,
          // selectedIndex: index,
          // onDestinationSelected: (index) => setState(() => this.index = index),
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.grey,
          unselectedItemColor: Colors.grey,
          onTap: onTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Explora',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Busqueda',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.domain),
              label: 'Testimonios',
            ),
          ],
        ),
      ),
    );
  }
}
