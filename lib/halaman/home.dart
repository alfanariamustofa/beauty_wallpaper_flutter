import 'package:flutter/material.dart';
import '../database.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BuildContext _context;

  int _selectedBottomMenu = 1;
  int _selectedItemDrawer = 0;

  Database _database;

  List<Card> dataList = List.empty(growable: true);

  _changeMenu(int position) {
    final rName = ModalRoute.of(context).settings.name;
    if("/gallery"==rName && position==1) return true;

    switch (position) {
      case 0:
        Navigator.pushNamed(_context, "/favorite");
        break;
      case 2:
        Navigator.pushNamed(_context, "/about");
        break;
      default:
        Navigator.pushNamed(_context, "/gallery");
    }
  }

  @override
  void initState() {
    _database = Database();
    _generateList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _context = context;

    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Color(0xffe35d5b)),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Beauty Wallpaper',
            style: TextStyle(color: Color(0xffe35d5b), fontSize: 16),
          ),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: 1 / 1,
          children: dataList,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_library_sharp), label: 'Gallery'),
            BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
          ],
          unselectedFontSize: 12,
          selectedFontSize: 12,
          unselectedIconTheme: IconThemeData(size: 16),
          selectedIconTheme: IconThemeData(size: 23),
          currentIndex: _selectedBottomMenu,
          selectedItemColor: Color(0xffe35d5b),
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: _changeMenu,
        ),
        drawer: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.transparent,
            ),
            child: _drawer()));
  }

  Card _itemGrid(String tag, String url) {
    return Card(
        child: InkWell(
      splashColor: Colors.deepOrange[100],
      child: Hero(
        tag: tag,
        child: FittedBox(child: Image.network(url), fit: BoxFit.fill),
      ),
      onTap: () {
        Navigator.pushNamed(_context, "/detail", arguments: [tag, url]);
      },
    ));
  }

  

  void _generateList() async {
    dataList = [];
    List<Map<String,String>> data = await _database.getList(_selectedItemDrawer);

    for (int i = 0; i < data.length; i++) {
      dataList.add(_itemGrid(data[i]["tag"], data[i]["url"]));
    }
  }

  Drawer _drawer() {
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
            setState(() {
              _selectedItemDrawer = position;
              _generateList();
            });
            Navigator.pop(_context);
          },
        ));
  }

}
