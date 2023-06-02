import 'package:assignment_6/Screens/menuView.dart';
import 'package:assignment_6/widgets/bottomNavBar.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({super.key});

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Row(
              children: const [
                SizedBox(width: 10),
                Text("Profile & Password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40
                ),)
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                SizedBox(width: 10),
                Text("Lengkapi data terakhir berikut untuk masuk ke",
                style: TextStyle(
                  fontSize: 18
                ),)
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: const [
                SizedBox(width: 10),
                Text("aplikasi Mega Mall",
                style: TextStyle(
                  fontSize: 20
                ),)
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: const [
                SizedBox(width: 10),
                Text("Full Name",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),)
              ],
            ),
            const SizedBox(height: 10),
            const TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Full Name"
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: const [
                SizedBox(width: 10),
                Text("Password",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),)
              ],
            ),
            const SizedBox(height: 10),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password",
                suffixIcon: Icon(Icons.remove_red_eye)
              ),
            ),
            const SizedBox(height: 7),
            Row(
              children: const [
                SizedBox(width: 10),
                Icon(Icons.error_outline_outlined),
                SizedBox(width: 7),
                Text("Kata sandi harus 6 karakter atau lebih")
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                SizedBox(width: 10),
                Text("Referal Code (Optional)",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),)
              ],
            ),
            const SizedBox(height: 10),
            const TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Input your code"
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context)=> const BottomNavBar())
                    );
                  },
                     child: const Text("Confirmation",
                     style: TextStyle(
                      color: Colors.white
                ),
              )
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}