import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project/model/userModel.dart';
import 'package:project/shared/constColor.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _publisher = TextEditingController();
  final TextEditingController _auther = TextEditingController();
  final TextEditingController _pages = TextEditingController();
  final TextEditingController _collection = TextEditingController();
  final TextEditingController _book = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: const Text("AddProducts"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _book,
                decoration: InputDecoration(
                  label: Text("Id"),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _name,
                decoration: InputDecoration(
                  label: Text("name of book"),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _auther,
                decoration: InputDecoration(
                  label: Text("auther"),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _publisher,
                decoration: InputDecoration(
                  label: Text("publisher"),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _pages,
                decoration: InputDecoration(
                  label: Text("pages"),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () async {
                  final String name = _name.text;
                  final String auther = _auther.text;
                  final String publisher = _publisher.text;
                  final String pages = _pages.text;
                  final String book = _book.text;

                  final docUser =
                      FirebaseFirestore.instance.collection('books').doc(book);
                  final user = UserModel(
                    nameofbook: name,
                    auther: auther,
                    publisher: publisher,
                    pages: pages,
                  );
                  final json = user.tojson();
                  await docUser.set(json);
                },
                child: Text(
                  "add",
                  style: TextStyle(fontSize: 19, color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(BTNgreen),
                  padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
