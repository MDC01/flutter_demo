import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('dachuan', style:TextStyle(fontWeight:FontWeight.bold)),
                accountEmail: Text('dachuan@dachuan.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://www.baidu.com/img/bd_logo1.png'),
                ),
                decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  image: DecorationImage(
                    image: NetworkImage('https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=3985468636,3282077851&fm=173&app=25&f=JPEG?w=640&h=360&s=EFA5776ECA825F7E0C1A44030300709A')
                  )
                ),
              ),
              ListTile(
                title: Text('messages',textAlign:TextAlign.right),
                trailing: Icon(Icons.message, color:Colors.black12, size:22.0),
                onTap: () =>Navigator.pop(context),
              ),
              ListTile(
                title: Text('Favorite',textAlign:TextAlign.right),
                trailing: Icon(Icons.favorite, color:Colors.black12, size:22.0),
                onTap: () =>Navigator.pop(context),
              ),
              ListTile(
                title: Text('Settings',textAlign:TextAlign.right),
                trailing: Icon(Icons.settings, color:Colors.black12, size:22.0),
                onTap: () =>Navigator.pop(context),
              ),
            ],
          ),
        );
  }
}