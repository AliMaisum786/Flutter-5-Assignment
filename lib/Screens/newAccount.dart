import 'package:assignment_6/Screens/loginView.dart';
import 'package:assignment_6/Screens/verificationView.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NewAccountView extends StatelessWidget {
  NewAccountView({super.key});
  TextEditingController semail_control = TextEditingController();
  TextEditingController spass_control = TextEditingController();
  signup(context) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: semail_control.text,
        password: spass_control.text,
      );
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginView()));
      print("User Addes Successfully");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(height: 60),
            Row(
              children: const [
                SizedBox(width: 10),
                Text(
                  "Register Account",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: const [
                SizedBox(width: 10),
                Text(
                  "Masukan Email/ No. Hp untuk mendaftar",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(height: 35),
            Row(
              children: const [
                SizedBox(width: 10),
                Text(
                  "Email/ Phone",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            const SizedBox(height: 15),
            TextField(
              controller: semail_control,
              obscureText: false,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Email"),
            ),
            const SizedBox(height: 10),
            const Text("Password"),
            const SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: false,
              controller: spass_control,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Password"),
            ),
            const SizedBox(height: 70),
            Row(
              children: [
                const SizedBox(width: 40),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "back",
                      style: TextStyle(fontSize: 30),
                    )),
                ElevatedButton(
                    onPressed: () {
                      signup(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VerificationView()));
                    },
                    child: const Text(
                      "signup",
                      style: TextStyle(fontSize: 30),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
