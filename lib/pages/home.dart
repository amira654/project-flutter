import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/pages/addproducts.dart';
import 'package:project/pages/homeScreen.dart';
import 'package:project/pages/loginScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  int currentindex = 0;
  List<Widget> screen = [
    Home(),
    AddProduct(),
    Login(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (index) {
          print(index);
          setState(() {
            currentindex = index;
          });
        },
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          const BottomNavigationBarItem(icon: Icon(Icons.add), label: "add"),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );
                  },
                  icon: Icon(Icons.exit_to_app)),
              label: "Exit"),
        ],
      ),
    );
  }
}
