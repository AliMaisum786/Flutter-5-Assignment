import 'dart:ui';

import 'package:assignment_6/Screens/productDetails.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  ProductView({super.key});
  CollectionReference products =
      FirebaseFirestore.instance.collection("products");

  getAllProducts() async {
    return products.get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: getAllProducts(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.docs.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [const
                    Padding(padding: EdgeInsets.all(9)),
                    Image.network((snapshot.data.docs[index]["picture"]),),
                    const SizedBox(height: 10),
                    Text(
                      snapshot.data.docs[index]['name'],
                      style: const TextStyle(fontSize: 30),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      snapshot.data.docs[index]['price'],
                      style: const TextStyle(fontSize: 30),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ProductDetail()));
                        },
                        child: const Text("Product Details"))
                  ],
                );
              },
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
