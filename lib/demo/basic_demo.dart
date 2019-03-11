import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
            // color: Color.fromRGBO(3, 50, 250, 1.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 50, 250, 1.0),
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'dachuan',
          style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 34.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w100,
          ),
          children: [
            TextSpan(
                text: '.ma',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey,
                ))
          ]),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );
  final String _author = 'dachuan';
  final String _title = 'dachuan';
  @override
  Widget build(BuildContext context) {
    return Text(
      '《$_title》-$_author。dhafdnasklijmwdcmlkdsckibfgvikjcndsjkvnfjdcnskdcndsjvlbsnjCDSVNGLSDNogbvdfhdsvcyjdsrchfydrtsgxvbrcbynjhebxr3dyhnbegadgdvgsac bfdg gfmacfpmnsd;cmpwomal;dfmopsd',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
