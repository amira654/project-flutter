import 'package:flutter/material.dart';
import 'package:project/pages/books.dart';
import 'package:project/shared/constColor.dart';

class Details extends StatefulWidget {
  item Product;
  Details({
    required this.Product,
  });
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isShowMore = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarGreen,
        foregroundColor: Colors.white,
        title: const Text(
          "Details_Screen",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.Product.imgpath),
            const SizedBox(
              height: 11,
            ),
            Text(
              "\$  ${widget.Product.price}",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                      child: Text(
                        "New",
                        style: TextStyle(fontSize: 15),
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 129, 129),
                        borderRadius: BorderRadius.circular(4),
                      )),
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 66,
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.edit_location,
                      size: 26,
                      color: Color.fromARGB(168, 3, 65, 27),
                      // color: Color.fromARGB(255, 186, 30, 30),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "Book Shop",
                      style: TextStyle(fontSize: 19),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const SizedBox(
              width: double.infinity,
              child: Text(
                "Description : ",
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "\$  ${widget.Product.text}",
              style: const TextStyle(
                fontSize: 18,
              ),
              maxLines: isShowMore ? 3 : null,
              overflow: TextOverflow.fade,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  isShowMore = !isShowMore;
                });
              },
              child: Text(isShowMore ? "Show more" : "Show less",
                  style: const TextStyle(
                    fontSize: 18,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
