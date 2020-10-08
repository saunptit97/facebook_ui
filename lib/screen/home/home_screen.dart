import 'package:facebook_ui/screen/home/widgets/left_panel.dart';
import 'package:facebook_ui/screen/home/widgets/right_panel.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff18191A),
      // appBar: AppBar(
      //     // actions: [
      //     //   TextFormField(),
      //     // ],
      //     ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LeftPanel(),
          Text("Home Page"),
          RightPanel(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff373737),
        child: Icon(
          Icons.edit,
          color: Colors.white,
        ),
      ),
    );
  }
}
