
import 'package:flutter/cupertino.dart';

class Page extends StatefulWidget{
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("add ticket")
        ],
      ),
    );
  }
}