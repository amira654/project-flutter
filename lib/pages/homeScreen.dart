import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project/pages/addproducts.dart';
import 'package:project/pages/details_screen.dart';
import 'package:project/pages/books.dart';
import 'package:project/shared/constColor.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CollectionReference userref = FirebaseFirestore.instance.collection("books");
  List users = [];
  getData() async {
    var response = await userref.get();
    response.docs.forEach((element) {
      setState(() {
        users.add(element.data());
      });

      print(element.data());
      print("-------------------------");
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }
  final List<String> item = List<String>.generate(10000, (i) => '$i');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appbarGreen,
          foregroundColor: Colors.white,
          title: Text(
            "Home Screen",
            style: TextStyle(fontSize: 20),
          ),
          // centerTitle: true,
          leading: Icon(Icons.home),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddProduct(),
              ),
            );
          },
          child: Icon(Icons.add),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
           //  color: Colors.blue[50],
            child: ListView.builder(
                addRepaintBoundaries: false,
                itemCount: users.length,
                itemBuilder: (context, i) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Details(Product: items[i]),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Text(item[i],style: TextStyle(color: Colors.white),),
                      ),
                      title: Text(
                          "Name of book : ${users[i]['name of book']}\n",
                          // "Auther : ${users[i]['auther']}",
                      ),
                      subtitle: Text("Auther : ${users[i]['auther']}\n"
                          "----------------------------------"),
                      trailing: Text('pages:${users[i]['No of pages']}\n',
                         ),

                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
