import 'package:flutter/material.dart';
import 'package:widgets/select_widget.dart';
import 'package:widgets/slider_with_package.dart';
import 'package:widgets/staggered_grid_view/quilted_gridview.dart';
import 'package:widgets/swiper.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SelectWidget()
      // home: Swiper1()
    );
  }
}

