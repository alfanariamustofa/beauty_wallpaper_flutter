import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {

  String url="";
  String tag="item_";

  @override
  Widget build(BuildContext context) {

    final arg = ModalRoute.of(context).settings.arguments as List<String>;
    if(arg.length>0){
      tag = arg[0];
      url = arg[1];
    }
    else{
      Navigator.pop(context);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Preview"),
        actions: [
          IconButton(icon: Icon(Icons.favorite), onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Image added to favorite"),
              duration: Duration(seconds: 2),
            ));
          })
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: tag, 
              child: Image.network(url, fit: BoxFit.cover)
            )
          ]
        ),
      ),
    );
  }
}
