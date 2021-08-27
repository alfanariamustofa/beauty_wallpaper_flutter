import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Favorite Wallpaper"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(50), child: Text("Currently you do not have a favorite wallpaper", textAlign: TextAlign.center , style: TextStyle(color: Colors.grey, fontSize: 18)))
          ]
        ),
      ),
    );
  }
}
