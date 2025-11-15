import 'package:flutter/material.dart';
import 'stream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream -  Candra',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stream')),
      body: Container(decoration: BoxDecoration(color: bgColor)),
    );
  }

  @override
  void initState() {
    super.initState();
    colorStream = ColorStream();
    changeColor(); 
  }

  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;

  void changeColor() async {
    // await for (var eventColor in colorStream.getColorStream()) {
    //   setState(() {
    //     bgColor = eventColor;
    //   });
    // }
    colorStream.getColorStream().listen((eventColor) {
      setState(() {
        bgColor = eventColor;
      });
    });
  }
}
