import 'package:flutter/material.dart';
import 'package:gallery/screen/home/vidio/vidio_provider.dart';
import 'package:provider/provider.dart';


class VideosScreen extends StatefulWidget {
  const VideosScreen({Key? key}) : super(key: key);

  @override
  State<VideosScreen> createState() => _VideosScreenState();
}

class _VideosScreenState extends State<VideosScreen> {
  vidio_provider? data,datatrue;
  @override
  Widget build(BuildContext context) {
    data = Provider.of<vidio_provider>(context,listen: false);
    datatrue = Provider.of<vidio_provider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Videos",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView.builder(itemCount: data!.vidioList.length,itemBuilder: (context, index) {
          return Container(
            height: 120,
            width: double.infinity,
            color: Colors.green,
            child: Column(
              children: [
                Container(
                  height: 90,
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.topLeft,
                  child:  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset("${data!.vidioList[index]}",fit: BoxFit.fill,),
                  ),
                ),
                Container(
                  height: 10,
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.play_circle,color: Colors.white,size: 25,),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },),
      ),
    );
  }
}