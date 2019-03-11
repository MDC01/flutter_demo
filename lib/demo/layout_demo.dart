import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        //row|column横竖
        mainAxisAlignment: MainAxisAlignment.center, //主轴横竖
        children: <Widget>[
          Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              SizedBox(
                width: 200,
                height: 300,
                child: Container(
                  alignment: Alignment(0.0, -0.9),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(
                height: 32.0,
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(3, 54, 255, 1.0),
                      shape: BoxShape.circle,
                      gradient: RadialGradient(colors: [
                        Color.fromRGBO(7, 102, 255, 1.0),
                        Color.fromRGBO(3, 54, 255, 1.0),
                      ])),
                  child:
                      Icon(Icons.brightness_2, color: Colors.white, size: 32.0),
                ),
              ),
              Positioned(
                right: 20,
                top: 120,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0),
              ),
              Positioned(
                right: 70,
                top: 80,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 20.0),
              ),
              Positioned(
                right: 90,
                top: 170,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0),
              ),
              Positioned(
                right: 50,
                top: 160,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 18.0),
              ),
              Positioned(
                right: 90,
                bottom: 20,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 12.0),
              ),
              Positioned(
                right: 170,
                top: 180,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 15.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return null;
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(
    this.icon, {
    this.size = 32.0,
  });

  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
