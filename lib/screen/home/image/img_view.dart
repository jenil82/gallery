import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'img_provider.dart';

class image extends StatefulWidget {
  const image({Key? key}) : super(key: key);

  @override
  State<image> createState() => _imageState();
}

class _imageState extends State<image> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GridView.builder(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(1),
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "page", arguments:index );
                },
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Image.asset(
                    Provider.of<gallery_provider>(context, listen: false)
                        .imageList[index],
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            );
          },
          itemCount: 21,
        ),
      ),
    );
  }
}