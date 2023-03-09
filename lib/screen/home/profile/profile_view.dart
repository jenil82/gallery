import 'package:flutter/material.dart';
class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            "My Profile",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                child: Center(child: CircleAvatar(backgroundImage: AssetImage("assets/images/21.jpg"),radius: 100,)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text("                                      Name              :     jenil moradiay",style: TextStyle(color: Colors.white),),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text("                                     Email               :    jenilmoradiay@gmail.com",style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text("                                     Mobile No       :     9265280375",style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text("                                     Cource             :      Flutter devlopment",style: TextStyle(color: Colors.white),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}