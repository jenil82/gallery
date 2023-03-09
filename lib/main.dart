import 'package:flutter/material.dart';
import 'package:gallery/screen/home/gallaryview/gallary_provider.dart';
import 'package:gallery/screen/home/gallaryview/view_gallary.dart';
import 'package:gallery/screen/home/image/img_provider.dart';
import 'package:gallery/screen/home/image/view_screen.dart';
import 'package:gallery/screen/home/vidio/vidio_provider.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => gallery_provider(),),
        ChangeNotifierProvider(create: (context) => vidio_provider(),),
        ChangeNotifierProvider(create: (context) => Gallary(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomeScreen(),
          'page':(context) => PageViewScreen(),
        },
      ),
    ),
  );
}
