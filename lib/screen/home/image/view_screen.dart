import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'img_provider.dart';
class PageViewScreen extends StatefulWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  @override
  Widget build(BuildContext context) {
    int? i = ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12 ,
        body: PageView.builder(
          controller: PageController(
            initialPage: i,
          ),
          itemBuilder: (context, index) {
            return  Container(
              height: 350,
              width: double.infinity,
              child: Image.asset(
                Provider.of<gallery_provider>(context, listen: false)
                    .imageList[index],
              ),
            );
          },),
      ),
    );
  }
}