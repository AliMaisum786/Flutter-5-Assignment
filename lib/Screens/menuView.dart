import 'package:assignment_6/Screens/products.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuView();
}

TextEditingController productName = TextEditingController();
TextEditingController productPrice = TextEditingController();
TextEditingController productPicture = TextEditingController();
addProduct() {
  CollectionReference products =
      FirebaseFirestore.instance.collection("products");
  products
      .add({
        "name": productName.text,
        "price": productPrice.text,
        "picture": productPicture.text
      })
      .then((value) => print("Product Added"))
      .catchError((e) => print(e));
  productName.clear();
  productPrice.clear();
  productPicture.clear();
}

// CollectionReference products =
//   FirebaseFirestore.instance.collection('products');
getAllProduct() async {
  var products;
  return products.get();
}

class _MenuView extends State<MenuView> {
  @override
  Widget build(BuildContext context) {
     void pickImage()async{
      final ImagePicker picker = ImagePicker();
      final image = await picker.pickImage(source: ImageSource.gallery);
      final photo = await picker.pickImage(source: ImageSource.camera);

    }
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "            Mega Mall",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          actions: const [
            Icon(Icons.add_alert_sharp,
            color: Colors.black,),
            SizedBox(width: 25),
            Icon(Icons.shopping_cart_outlined,
            color: Colors.black,),
            SizedBox(width: 15)
          ],
        ),
        body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Search Product Name",
                      suffixIcon: Icon(Icons.search)),
                    ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: productName,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Product Name'),
                    ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: productPrice,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Product Price'),
                    ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: productPicture,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'URL of Picture'),
                    ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      addProduct();
                      },
                      child: const Text("Add")
                    ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductView()
                          )
                        );
                      },
                      child: const Text("Added Product")
                    ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: pickImage,
                    child: const Text("add an image")
                    ),
                ]
              )
            )
        )
      );
    }
  }



         // Row(
          //   children: [
          //     SingleChildScrollView(
          //       scrollDirection: Axis.horizontal,
          //       child: Row(
          //         children: const [
          //           Image(image: AssetImage("Pic1.jpeg")),
          //           SizedBox(width: 20),
          //           Image(image: AssetImage("Pic1.jpeg")),
          //           SizedBox(width: 20),
          //           Image(image: AssetImage("Pic1.jpeg")),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
          // const SizedBox(height: 12),
          // Row(
          //   children: const [
          //     Text("   Categories",
          //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          //     SizedBox(width: 200),
          //     Text(
          //       "See All",
          //       style: TextStyle(color: Colors.blue),
          //     ),
          //   ],
          // ),
          // const SizedBox(height: 13),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     Column(
          //       children: [
          //         IconButton(
          //           onPressed: () {},
          //           icon: const Icon(Icons.fastfood),
          //         ),
          //         const Text("Foods")
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         IconButton(
          //           onPressed: () {},
          //           icon: const Icon(Icons.card_giftcard),
          //         ),
          //         const Text("Gift")
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         IconButton(
          //           onPressed: () {},
          //           icon: const Icon(Icons.bed_rounded),
          //         ),
          //         const Text("Fashion")
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         IconButton(
          //           onPressed: () {},
          //           icon: const Icon(Icons.headphones),
          //         ),
          //         const Text("Gadgets")
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         IconButton(
          //           onPressed: () {},
          //           icon: const Icon(Icons.watch_later_outlined),
          //         ),
          //         const Text("Watches")
          //       ],
          //     ),
          //   ],
          // ),
          // const SizedBox(height: 20),
          // Container(
          //   color: const Color.fromARGB(255, 235, 231, 231),
          //   child:
          //       Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          //     Row(
          //       children: const [
          //         Text(
          //           "   Featured Product",
          //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          //         ),
          //         SizedBox(width: 200),
          //         Text(
          //           "See All",
          //           style: TextStyle(color: Colors.blue),
          //         ),
          //       ],
          //     ),
          //     const SizedBox(height: 10),
          //     Row(
          //       children: [
          //         const SizedBox(width: 10),
          //         Container(
          //           width: 180,
          //           color: Colors.white,
          //           child: Column(
          //             children: [
          //               Image.asset("Pic2.png"),
          //               const Text(
          //                 "TMA-2 HD Wireless",
          //                 style: TextStyle(
          //                     fontSize: 20, fontWeight: FontWeight.bold),
          //               ),
          //               Row(
          //                 children: const [
          //                   Text(
          //                     "  Rp. 1.500.000",
          //                     style: TextStyle(
          //                         color: Colors.red,
          //                         fontSize: 16,
          //                         fontWeight: FontWeight.bold),
          //                   ),
          //                 ],
          //               ),
          //               const SizedBox(height: 10),
          //               Row(
          //                 children: const [
          //                   Icon(
          //                     Icons.star,
          //                     color: Color.fromARGB(255, 253, 212, 30),
          //                   ),
          //                   SizedBox(width: 4),
          //                   Text("4.6"),
          //                   SizedBox(width: 7),
          //                   Text("86 Reviews"),
          //                   SizedBox(width: 28),
          //                   Icon(Icons.more_vert_sharp)
          //                 ],
          //               )
          //             ],
          //           ),
          //         ),
          //         const SizedBox(width: 15),
          //         Container(
          //           width: 180,
          //           color: Colors.white,
          //           child: Column(
          //             children: [
          //               Image.asset("Pic3.png"),
          //               const SizedBox(height: 25),
          //               const Text(
          //                 "TMA-2 HD Wireless",
          //                 style: TextStyle(
          //                     fontSize: 20, fontWeight: FontWeight.bold),
          //               ),
          //               Row(
          //                 children: const [
          //                   Text("  Rp. 1.500.000",
          //                       style: TextStyle(
          //                           color: Colors.red,
          //                           fontSize: 16,
          //                           fontWeight: FontWeight.bold)),
          //                 ],
          //               ),
          //               const SizedBox(height: 10),
          //               Row(
          //                 children: const [
          //                   Icon(
          //                     Icons.star,
          //                     color: Color.fromARGB(255, 253, 212, 30),
          //                   ),
          //                   SizedBox(width: 4),
          //                   Text("4.6"),
          //                   SizedBox(width: 7),
          //                   Text("86 Reviews"),
          //                   SizedBox(width: 28),
          //                   Icon(Icons.more_vert_sharp)
          //                 ],
          //               )
          //             ],
          //           ),
          //         )
          //       ],
          //     ),
          //     const SizedBox(height: 30),
          //     Row(
          //       children: [
          //         Container(
          //           margin: const EdgeInsets.fromLTRB(10, 7, 10, 10),
          //           width: 360,
          //           child: Column(
          //             children: [Image.asset("Pic4.png")],
          //           ),
          //         )
          //       ],
          //     ),
          //     Row(
          //       children: const [
          //         Text(
          //           "   Best Sellers",
          //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          //         ),
          //         SizedBox(width: 200),
          //         Text(
          //           "See All",
          //           style: TextStyle(color: Colors.blue),
          //         ),
          //       ],
          //     ),
          //     const SizedBox(height: 10),
          //     Row(
          //       children: [
          //         const SizedBox(width: 10),
          //         Container(
          //           width: 180,
          //           color: Colors.white,
          //           child: Column(
          //             children: [
          //               Image.asset("Pic2.png"),
          //               const Text(
          //                 "TMA-2 HD Wireless",
          //                 style: TextStyle(
          //                     fontSize: 20, fontWeight: FontWeight.bold),
          //               ),
          //               Row(
          //                 children: const [
          //                   Text(
          //                     "  Rp. 1.500.000",
          //                     style: TextStyle(
          //                         color: Colors.red,
          //                         fontSize: 16,
          //                         fontWeight: FontWeight.bold),
          //                   ),
          //                 ],
          //               ),
          //               const SizedBox(height: 10),
          //               Row(
          //                 children: const [
          //                   Icon(
          //                     Icons.star,
          //                     color: Color.fromARGB(255, 253, 212, 30),
          //                   ),
          //                   SizedBox(width: 4),
          //                   Text("4.6"),
          //                   SizedBox(width: 7),
          //                   Text("86 Reviews"),
          //                   SizedBox(width: 28),
          //                   Icon(Icons.more_vert_sharp)
          //                 ],
          //               )
          //             ],
          //           ),
          //         ),
              //     const SizedBox(width: 15),
              //     Container(
              //       width: 180,
              //       color: Colors.white,
              //       child: Column(
              //         children: [
              //           Image.asset("Pic3.png"),
              //           const SizedBox(height: 25),
              //           const Text(
              //             "TMA-2 HD Wireless",
              //             style: TextStyle(
              //                 fontSize: 20, fontWeight: FontWeight.bold),
              //           ),
              //           Row(
              //             children: const [
              //               Text("  Rp. 1.500.000",
              //                   style: TextStyle(
              //                       color: Colors.red,
              //                       fontSize: 16,
              //                       fontWeight: FontWeight.bold)),
              //             ],
              //           ),
              //           const SizedBox(height: 2),
              //           Row(
              //             children: const [
              //               Icon(
              //                 Icons.star,
              //                 color: Color.fromARGB(255, 253, 212, 30),
              //               ),
              //               SizedBox(width: 4),
              //               Text("4.6"),
              //               SizedBox(width: 7),
              //               Text("86 Reviews"),
              //               SizedBox(width: 28),
              //               Icon(Icons.more_vert_sharp),
              //               SizedBox(
              //                 height: 40,
              //               )
              //             ],
              //           ),
              //         ],
              //       ),
              //     )
              //   ],
              // ),
              // FutureBuilder(
              //   future: getAllProduct(),
              //   builder: (BuildContext context, AsyncSnapshot snapshot) {
              //     if (snapshot.hasData) {
              //       return ListView.builder(
              //         itemCount: snapshot.data.docs.length,
              //         itemBuilder: (context, index) {
              //           return ListTile(
              //             leading: CircleAvatar(
              //               backgroundImage: NetworkImage((snapshot
              //                       .data.docs[index]['image']))
              //             ),
              //             title: Text(snapshot.data.docs[index]['name']),
              //             subtitle: Text(snapshot.data.docs[index]['price']),
              //           );
              //         },
              //       );
              //     } else {
              //       return const CircularProgressIndicator();
              //     }
              //   },
              // )
            // ]),
          // ),
