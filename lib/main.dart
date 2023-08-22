import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  containerBuild(
      {Color bgColor = Colors.yellowAccent,
      double w = 100,
      double h = 100,
      double radius = 0}) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: w,
      height: h,
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(radius)),
    );
  }

  @override
  Widget build(BuildContext context) {
    var imageFit = BoxFit.cover;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Imagem 200 X 200")),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text('250 X 250'),
          Container(
            width: 250,
            height: 250,
            color: Colors.black12,
            child: Image.asset('assets/images/flash.jpg', fit: imageFit),
          ),
          const Text('300 X 100'),
          Container(
            width: 300,
            height: 100,
            color: Colors.black12,
            child: Image.asset('assets/images/flash.jpg', fit: imageFit),
          ),
          const Text('100 X 250'),
          Container(
            width: 100,
            height: 250,
            color: Colors.black12,
            child: Image.asset('assets/images/flash.jpg', fit: imageFit),
          ),
        ]),
      ),
    );
  }
}
