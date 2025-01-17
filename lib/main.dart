import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, super.key});

  final Widget title;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(color: Colors.blue[500]),
        child: Row(
          children: [
            const IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'Navigation Menu',
              onPressed: null,
            ),
            Expanded(
              child: title,
            ),
            const IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null,
            ),
          ],
        ));
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          MyAppBar(
              title: Text(
            "My app",
            textDirection: TextDirection.ltr,
            style: Theme.of(context).primaryTextTheme.titleLarge,
          ))
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    title: 'My app',
    home: SafeArea(child: MyScaffold()),
  ));
}
