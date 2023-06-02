// ignore_for_file: non_constant_identifier_names, unused_local_variable, override_on_non_overriding_member

import 'package:assignment_6/Screens/menuView.dart';
import 'package:assignment_6/Screens/newAccount.dart';
import 'package:assignment_6/widgets/bottomNavBar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  TextEditingController email_control = TextEditingController();
  TextEditingController pass_control = TextEditingController();

  @override
  login(context) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email_control.text, password: pass_control.text);
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const MenuView(),
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: Text(e.code),
            );
          });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
            Row(
              children: const [
                Text(
                  "   Welcome back to Mega Mall",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: const [
                Text(
                  "   Write Email and Password to Sign In",
                  style: TextStyle(fontSize: 19),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              children: const [
                Text(
                  "   Email/ Phone",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
            const SizedBox(height: 10),
            TextField(
              controller: email_control,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Email/ Phone"),
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Text(
                  "   Password",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
            const SizedBox(height: 10),
            TextField(
                controller: pass_control,
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    suffixIcon: Icon(Icons.remove_red_eye))),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                login(context);
                // Navigator.pushReplacement(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const BottomNavBar()));
              },
              child: const Text(
                "Sign In",
                style: TextStyle(fontSize: 25),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const Text(
                  "   Forgot Password",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(width: 170),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NewAccountView()));
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

void login(BuildContext context) {}
