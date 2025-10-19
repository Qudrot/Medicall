import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medicall"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.search),
          ),
        ],
        leading: Icon(Icons.menu),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey.shade200,
                filled: true,
                prefixIcon: Icon(Icons.search),
                hintText: "Search hospital or address",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

          ),
          //Widget for image
          Padding(
            padding: EdgeInsetsGeometry.all(16),
            child: Image.asset(
              "assets/map.png",
              width: MediaQuery.sizeOf(context).width * 0.8,
              height: MediaQuery.sizeOf(context).height * 0.8,
              fit: BoxFit.cover,
            ),
            ),
        ],
      ),
    );
  }
}
