import 'package:flutter/material.dart';
import 'package:gallery/screen/home/gallaryview/gallary_provider.dart';
import 'package:provider/provider.dart';
import '../image/img_view.dart';
import '../profile/profile_view.dart';
import '../vidio/vidio_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  Gallary? h1,h1true;
  List Screen = [image(),VideosScreen(),profile(),];
  @override
  Widget build(BuildContext context) {
    h1 = Provider.of<Gallary>(context,listen: false);
    h1true = Provider.of<Gallary>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Gallary"),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Screen[h1true!.i],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: h1true!.i,
          onTap: (value) {
            h1true!.i7(value);
          },
          backgroundColor: Colors.black, items: [
          BottomNavigationBarItem(icon: Icon(Icons.photo,color: Colors.white,),label: "Images"),
          BottomNavigationBarItem(icon: Icon(Icons.videocam_outlined,color: Colors.white,),label: "Videos"),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.white,),label: "Profile"),
        ],),
      ),
    );
  }
}