import 'package:app_suntec/theme/app_theme.dart';
import 'package:flutter/material.dart';

import '../../screen/components_home/search_widget.dart';
import 'componenets_home_c/item_tile.dart';

class HomeScreenC extends StatefulWidget {
  const HomeScreenC({super.key});

  @override
  State<HomeScreenC> createState() => _HomeScreenCState();
}

class _HomeScreenCState extends State<HomeScreenC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.redAccent), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: Colors.redAccent), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box, color: Colors.redAccent),
              label: ''),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'Suntec, el espacio donde hacemos luz',
              style: fontsTitleC,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SearchBox(
            onChanged: (value) {},
          ),
          const SizedBox(),
          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              ItemTile(),
              ItemTile(),
              ItemTile(),
              ItemTile(),
              ItemTile(),
            ],
          ))
        ],
      ),
    );
  }
}
