import 'package:destini/pages/story/page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DestiniApp());
}

class DestiniApp extends StatelessWidget {
  const DestiniApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Destini',
      home: StoryPage(),
    );
  }
}
