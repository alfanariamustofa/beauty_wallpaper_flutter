import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: MySliverAppBar(expandedHeight: 200),
              pinned: true,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, index) => ListTile(
                      title: Text("Index: $index"),
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  MySliverAppBar({@required this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: [
        Image.network(
          'https://cdn.pixabay.com/photo/2017/02/19/15/28/sunset-2080072_1280.jpg',
          fit: BoxFit.cover,
        ),
        Center(
          child: Opacity(
            opacity: 1,//shrinkOffset / expandedHeight,
            child: AppBar(
              backgroundColor: Colors.transparent,
              iconTheme: IconThemeData(color: Color(0xffe35d5b)),
              title: Opacity( opacity:shrinkOffset / expandedHeight, child: Text("About App", style: TextStyle(color: Colors.white),)),
            )
          ),
        ),
        Positioned(
          top: expandedHeight - shrinkOffset - 100 / 2,
          left: MediaQuery. of(context). size. width / 2 - 50,
          child: Opacity(
            opacity: (1 - shrinkOffset / expandedHeight),
            child: Card(
              shadowColor: Colors.transparent,
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              elevation: 10,
              child: SizedBox(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/21276967?v=4")
                )
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}