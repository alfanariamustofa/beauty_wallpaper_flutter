import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  BuildContext _context;
  int _selectedItemDrawer = 0;
  @override
  Widget build(BuildContext context) {
    _context = context;
    return Drawer(    
        child: Container(
            color: Color(0xaf000000),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _itemMenuDrawer(0, "All Category"),
                _itemMenuDrawer(1, "Food/Drink"),
                _itemMenuDrawer(2, "Animals"),
                _itemMenuDrawer(3, "Nature"),
                _itemMenuDrawer(4, "Sport"),
                _itemMenuDrawer(5, "Technology")
              ],
            )));
  }

  Card _itemMenuDrawer(int position, String title) {
    return Card(
        color: Colors.transparent,
        elevation: 0,
        child: InkWell(
          splashColor: Colors.deepOrange[100],
          child: ListTile(
              selected: _selectedItemDrawer == position,
              selectedTileColor: Colors.redAccent,
              title: Center(
                  child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ))),
          onTap: () {
            _selectedItemDrawer = position;
            Navigator.pop(_context);
            ScaffoldMessenger.of(_context).showSnackBar(SnackBar(
              content: Text(title),
              duration: Duration(seconds: 2),
            ));
          },
        ));
  }
}
