import 'package:assignment_6/Screens/menuView.dart';
import 'package:flutter/material.dart';

class BuyView extends StatefulWidget {
  const BuyView({super.key});

  @override
  State<BuyView> createState() => _BuyViewState();
}

class _BuyViewState extends State<BuyView> {
  TextEditingController address = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController email = TextEditingController();

  String level = 'Credit/ Debit Card';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Check Out",style: TextStyle(color: Color.fromARGB(255, 238, 63, 51)),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(10)),
            Container(
              padding: const EdgeInsets.all(7),
              height: 800,
              width: 390,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: const [
                      SizedBox(width: 15),
                      Text(
                        "Deliver to: Ali Maisum",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ],
                  ),
                  const SizedBox(height: 7),
                  Row(
                    children: [
                      const SizedBox(width: 15),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MenuView()));
                          },
                          child: const Text(
                            "Home",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.orange,
                                fontSize: 20),
                          )),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: const [
                      SizedBox(width: 15),
                      Text(
                        "Address:",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(height: 7),
                  TextField(
                    controller: address,
                    decoration:
                        const InputDecoration(labelText: 'Write Your Address'),
                  ),
                  const SizedBox(height: 7),
                  Row(
                    children: const [
                      SizedBox(width: 15),
                      Text(
                        "Phone Number:",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(height: 4),
                  TextField(
                    controller: phoneNumber,
                    decoration:
                        const InputDecoration(labelText: 'Enter Phone Number'),
                  ),
                  const SizedBox(height: 7),
                  Row(
                    children: const [
                      SizedBox(width: 15),
                      Text(
                        "E-mail:",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(height: 4),
                  TextField(
                    controller: email,
                    decoration: const InputDecoration(
                        labelText: 'Write E-mail Address'),
                  ),
                  const SizedBox(height: 10),
                  const Text("Choose Payment Option",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Radio(
                          value: "Credit/ Debit Card",
                          groupValue: level,
                          onChanged: (value) {
                            setState(() {
                              level = value.toString();
                            });
                          }),
                          const Text("Credit/ Debit Card",
                          style: TextStyle(
                            fontSize: 15
                          ),)
                          ],
                        ),
                      const SizedBox(height: 4),
                        Row(
                    children: [
                      Radio(
                          value: "Easy Paisa",
                          groupValue: level,
                          onChanged: (value) {
                            setState(() {
                              level = value.toString();
                            });
                          }),
                      const Text("Easy Paisa",
                          style: TextStyle(
                            fontSize: 15
                          ),)
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: "Jazz Cash",
                          groupValue: level,
                          onChanged: (value) {
                            setState(() {
                              level = value.toString();
                            });
                          }),
                      const Text("Jazz Cash",
                          style: TextStyle(
                            fontSize: 15
                          ),)
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: "Cash on Delivery",
                          groupValue: level,
                          onChanged: (value) {
                            setState(() {
                              level = value.toString();
                            });
                          }),
                      const Text("Cash on Delivery",
                          style: TextStyle(
                            fontSize: 15
                          ),)
                    ],
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: TextButton(
                      onPressed: (){},
                      child: const Text("Place Order",
                      style:TextStyle(fontSize: 20,color: Colors.white,backgroundColor: Color.fromARGB(255, 238, 63, 51)),)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}





































// import 'package:assignment_6/Screens/menuView.dart';
// import 'package:flutter/material.dart';

// class BuyView extends StatelessWidget {
//   BuyView({super.key});
//   TextEditingController address = TextEditingController();
//   TextEditingController phonenumber = TextEditingController();
//   TextEditingController Gmail = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Check Out",
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               child: Column(
//                 children: [
//                   Row(
//                     children: const [
//                       Text(
//                         "Deliver to: Ali Maisum",
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 7),
//                   Row(
//                     children: [
//                       ElevatedButton(
//                           onPressed: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => const MenuView()));
//                           },
//                           child: const Text(
//                             "Home",
//                             style: TextStyle(
//                               color: Colors.orange,
//                             ),
//                           )),
//                     ],
//                   ),
//                   const SizedBox(height: 7),
//                   Row(
//                     children: const [
//                       Text("Address")
//                     ],
//                   ),
//                   const SizedBox(height: 4),
//                   Row(
//                     children: [
//                       TextField(
//                         controller:  address,
//                         decoration: const  InputDecoration(
//                           labelText: 'Write your address',
//                           border: OutlineInputBorder(),
//                         ),
//                       )
//                     ],
//                   ),
//                   const SizedBox(height: 7),
//                   Row(
//                     children: const [
//                       Text("Phone Number")
//                     ],
//                   ),
//                   const SizedBox(height: 4),
//                   Row(
//                     children: [
//                       TextField(
//                         controller: phonenumber,
//                         decoration: const InputDecoration(
//                           labelText: 'Enter Phone Number',
//                           border: OutlineInputBorder(),
//                         ),
//                       )
//                     ],
//                   ),
//                   const SizedBox(height: 7),
//                   Row(
//                     children: const [
//                       Text("E-mail")
//                     ],
//                   ),
//                   const SizedBox(height: 4),
//                   Row(
//                     children: [
//                       TextField(
//                         controller: Gmail,
//                         decoration: const InputDecoration(
//                           border: OutlineInputBorder(),
//                           labelText: 'Write your E-mail'
//                         ),
//                       )
//                     ],
//                   ),
//                   const SizedBox(height: 7),
//                   Row(
//                     children: const [
//                       Text("Payment Options")
//                     ],
//                   ),
//                   const SizedBox(height: 4),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
