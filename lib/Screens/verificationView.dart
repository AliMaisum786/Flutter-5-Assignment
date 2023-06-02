import 'package:assignment_6/Screens/detailsView.dart';
import 'package:flutter/material.dart';

class VerificationView extends StatefulWidget {
  const VerificationView({super.key});

  @override
  State<VerificationView> createState() => _VerificationViewState();
}

class _VerificationViewState extends State<VerificationView> {
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
                Text("Verification",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),)
              ],),
              const SizedBox(height: 20),
              Row(
                children: const [
                  SizedBox(width: 10),
                  Text("Kami telah mengirimkan kode verifikasi ke",
                    style: TextStyle(
                      fontSize: 17
                    ))
                ],),
                Row(
                  children: const [
                    SizedBox(width: 10),
                    Text("+628********716",style: TextStyle(fontSize: 17),),
                    Text("Ganti?",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 17
                    ),)
                  ],
                ),
                const SizedBox(height: 60),
                Row(
                  children: const [
                    SizedBox(width: 10),
                    Text("Verification Code",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20
                    ),),
                    SizedBox(width: 70),
                    Text("Re-Send Code",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 17
                    ))
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const SizedBox(width: 12),
                    Container(
                      height: 50,
                      width: 70,
                      color: Colors.grey,
                      child: const Center(child:  Text("")),
                    ),
                     const SizedBox(width: 16),
                    Container(
                      height: 50,
                      width: 70,
                      color: Colors.grey,
                      child: const Center(child: Text("")),
                    ),
                     const SizedBox(width: 16),
                    Container(
                      height: 50,
                      width: 70,
                      color: Colors.grey,
                      child: const Center(child: Text("")),
                    ),
                     const SizedBox(width: 16),
                    Container(
                      height: 50,
                      width: 70,
                      color: Colors.grey,
                      child: const  Center(child: Text("")),
                    )
                  ],
                ),
                const SizedBox(height: 60),
                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> const DetailsView()));
                }, child: const Text("Continue",
                style: TextStyle(
                  color: Colors.white
                ),))
          ],
        ),
      ),
    );
  }
}
