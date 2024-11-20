import "package:flutter/material.dart";

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3, 
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter TabBar'),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 118, 198, 235),
            bottom: const TabBar(
              indicatorColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: "Home",),
                Tab(text: "About"),
                Tab(text: "Contact")
              ])
          ),
          body: const TabBarView(
            children: [
                Icon(Icons.directions_car),
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike)
              ],
          )
        )
      )
    );
  }
}
