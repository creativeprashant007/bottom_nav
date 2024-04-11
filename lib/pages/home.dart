import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  onItemSelected(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _options = [
    const Text("Home View is Working"),
    const Text("Search View is Working"),
    const Text("Profile View is Working"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: Center(child: _options.elementAt(_currentIndex)),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.green.withOpacity(.9),
        onTap: onItemSelected,
      ),
    );
  }
}
