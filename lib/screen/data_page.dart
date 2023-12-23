import 'package:flutter/material.dart';

class DataPage extends StatelessWidget {
  final String email, password;
  DataPage(this.email, this.password);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(child: Text('$email/$password')));
  }
}
