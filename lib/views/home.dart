import 'package:flutter/material.dart';
import 'package:modernlogintute/pages/login_page.dart';
import 'package:modernlogintute/pages/profile_page.dart';
import 'package:modernlogintute/components/navbar.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              // Implement search action here
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              // Implement cart action here
            },
            icon: Icon(Icons.shopping_cart),
          ),
          GestureDetector(
            onTap: () {
              showProfilePopupMenu(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.account_circle),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Menambahkan Stack di sini
                  Stack(
                    children: [
                      Image.asset(
                        'lib/images/banner.jpg',
                        width: 500,
                        height: 500,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 220,
                        left: 20,
                        child: Text(
                          'Best Food For\nFood Home',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 100,
                        left: 20,
                        child: Text(
                          'Lorem, ipsum dolor sit amet consectetur\n'
                          'adipisicing elit. Aperiam \n'
                          'accusantium perspiciatis, sapientemagni eos\n'
                          'dolorum ex quos dolores odio',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Widget lainnya
                  // ...
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  void showProfilePopupMenu(BuildContext context) {
    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(100, 100, 0, 0),
      items: [
        PopupMenuItem(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
            child: Text('Profile'),
          ),
        ),
        PopupMenuItem(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            child: Text('Logout'),
          ),
        ),
      ],
    );
  }
}
