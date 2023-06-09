import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddProductView extends StatelessWidget {
  AddProductView({super.key});
  TextEditingController productName = TextEditingController();
  TextEditingController productPrice = TextEditingController();

  addProduct() {
    CollectionReference products =
        FirebaseFirestore.instance.collection("products");
    products
        .add({"name": productName.text, "price": productPrice.text})
        .then((value) => print("Product Addes"))
        .catchError((e) => print(e));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: productName,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "ProductName"

              ),
            ),
             const SizedBox(height: 10),
            TextField(
              controller: productPrice,
               decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "ProductPrice")
            ),
            ElevatedButton(
              onPressed: () {
                addProduct();
              },
              child: const Text("Add Product"),
            )
          ],
        ),
      ),
    );
  }
}
