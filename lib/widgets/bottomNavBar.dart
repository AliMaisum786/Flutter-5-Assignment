import 'package:assignment_6/Screens/CartView.dart';
import 'package:assignment_6/Screens/loginView.dart';
import 'package:assignment_6/Screens/menuView.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int activetab = 0;
  Widget currentscreen = const MenuView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentscreen,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activetab = 0;
                    currentscreen = const MenuView();
                  });
                },
                child: Column(
                  children: [
                    Icon(Icons.home,
                        color: activetab == 0 ? Colors.blue : Colors.black),
                    const Text("HOME")
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activetab = 1;
                  });
                },
                child: Column(
                  children: [
                    Icon(Icons.favorite,
                        color: activetab == 1 ? Colors.blue : Colors.black),
                    const Text("FAVOURITES")
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activetab = 2;
                    currentscreen = const CartScreen();
                  });
                },
                child: Column(
                  children: [
                    Icon(Icons.shopping_cart_outlined,
                        color: activetab == 2 ? Colors.blue : Colors.black),
                    const Text("CART")
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activetab = 3;
                    currentscreen = LoginView();
                  });
                },
                child: Column(
                  children: [
                    Icon(Icons.login,
                        color: activetab == 3 ? Colors.blue : Colors.black),
                    const Text("LOGIN")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
