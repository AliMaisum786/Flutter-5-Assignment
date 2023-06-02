import 'package:assignment_6/ProductConstant.dart';
import 'package:assignment_6/Screens/BuyView.dart';
import 'package:assignment_6/Screens/CartView.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  TextEditingController productpicture = TextEditingController();
  TextEditingController productname = TextEditingController();
  TextEditingController productprice = TextEditingController();
  addToCart(context) {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => CartScreen()));
      ProductsConstant.Products.add(
          {productpicture, productname, productprice});
    });
  }

  deleteProduct(i) {
    setState(() {
      ProductsConstant.Products.remove(i);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Detail Product"),
          actions: [
            const Icon(Icons.forward_rounded),
            const SizedBox(width: 20),
            IconButton(
                onPressed: () {
                  addToCart(context);
                },
                icon: const Icon(Icons.shopping_cart_outlined)),
            const SizedBox(width: 12),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Row(
              children: [
                Container(
                  width: 400,
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Image.asset("jeans.jpg", height: 250),
                      const SizedBox(height: 30),
                      Row(
                        children: const [
                          SizedBox(width: 35),
                          Text(
                            "Premium Jeans For Men -",
                            style: TextStyle(
                                fontSize: 27, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBox(width: 35),
                          Text(
                            "Mid Blue",
                            style: TextStyle(
                                fontSize: 27, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBox(width: 35),
                          Text(
                            "PKR: 5999",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const SizedBox(width: 35),
                          const Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 253, 212, 30),
                            size: 20,
                          ),
                          const SizedBox(width: 4),
                          const Text(
                            "4.6",
                            style: TextStyle(fontSize: 20),
                          ),
                          const SizedBox(width: 11),
                          const Text(
                            "86 Reviews",
                            style: TextStyle(fontSize: 20),
                          ),
                          const SizedBox(width: 55),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BuyView()));
                              },
                              child: const Text("Buy Now"))
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: const [
                          SizedBox(width: 35),
                          Text(
                            "_______________________________________________________",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      ListTile(
                        leading: CircleAvatar(child: Image.asset("logo.png")),
                        title: const Text(
                          "Adee Fashions",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text(
                          "Official Store",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "_______________________________________________________",
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Desrciption Product",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        child: const SafeArea(
                          child: Text(
                            "Emporio Armani J21 Jeans In Mid Wash Navy, Regular Fit. A button fly with a matte metal branded top button fastening and five belt loops on the waistband. A traditional five pocket design with two pouch pockets on the hips and featuring a small coin pocket within the right pocket and two pouch pockets on the reverse of the jeans. The signature Giorgio Armani Eagle metal logo badge is situated on the coin pocket in bronze and the signature bronze Giorgio Armani Eagle logo stud is situated on the reverse right pocket. The signature Emporio Armani logo debossed leather patch is situated on the reverse right of the waistband in dark brown. Top stitching detail on all the seams in golden yellow. 98% Cotton And 2% Elastane",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "_______________________________________________________",
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: const [
                          SizedBox(width: 35),
                          Text(
                            "Review(86)",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 80),
                          Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 253, 212, 30),
                            size: 20,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "4.6",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ));
  }
}
