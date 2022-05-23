import 'package:flutter/material.dart';

class LaundryBody extends StatefulWidget {
  const LaundryBody({Key? key}) : super(key: key);

  @override
  _LaundryBodyState createState() => _LaundryBodyState();
}

class _LaundryBodyState extends State<LaundryBody> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(child: Text("Laundry"),));
  }
}
