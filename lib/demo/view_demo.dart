import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget {
  Widget _gridItemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        // crossAxisCount: 3,
        maxCrossAxisExtent: 150,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
    );
  }
}

class GridViewExtentDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0, 0),
        child: Text(
          'Item $index',
          style: TextStyle(fontSize: 18.0, color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 150.0,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      // scrollDirection: Axis.horizontal,//水平竖直滚动方式
      children: _buildTiles(100),
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0, 0),
        child: Text(
          'Item $index',
          style: TextStyle(fontSize: 18.0, color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      // scrollDirection: Axis.horizontal,//水平竖直滚动方式
      children: _buildTiles(100),
    );
  }
}

class PageViewBuildeDemo extends StatelessWidget {
  @override
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(posts[index].imageUrl, fit: BoxFit.cover),
        ),
        Positioned(
          bottom: 8,
          left: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(posts[index].title,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(posts[index].author)
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      // pageSnapping: false,
      // reverse: true,//首尾连接
      // scrollDirection: Axis.vertical,//水平垂直滚动
      // onPageChanged: (currentPage) =>debugPrint('Page:$currentPage'),//页面变换的时候触发的事件
      controller: PageController(
        initialPage: 0, //初始页面显示页码
        keepPage: false,
        // viewportFraction: 0.85,//页面占屏比
      ),
      children: <Widget>[
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0, 0),
          child:
              Text('ONE', style: TextStyle(fontSize: 32, color: Colors.white)),
        ),
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0, 0),
          child:
              Text('TWO', style: TextStyle(fontSize: 32, color: Colors.white)),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment(0, 0),
          child: Text('THREE',
              style: TextStyle(fontSize: 32, color: Colors.white)),
        ),
      ],
    );
  }
}
