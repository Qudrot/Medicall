import 'package:flutter/material.dart';
import 'package:medicall/widgets/contact_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: DefaultTabController(
        length: 2,
        
        child: Column(
            children: [
              TabBar(tabs: [
                Tab(text: "Map"),
                Tab(text: "List")
              ]),
              Expanded(child: 
              TabBarView(children: [_buildMapView(), _buildListView()],
              ),
              )

            ],
           
          
              ),
          ),
        );
  
  }

  Widget _buildListView() {
  return ListView(
    children: [
      ContactItem(),
      ContactItem(),
      ContactItem(),
    ],
  );
}

 Widget _buildMapView() {
    return ListView(
      children: [
        Image.asset(
          "assets/map.png",
         width: MediaQuery.sizeOf(context).width * 0.8,
          height: MediaQuery.sizeOf(context).height * 1,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}

 
