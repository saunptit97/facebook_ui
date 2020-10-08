import 'package:flutter/material.dart';

class RowItem extends StatelessWidget {
  final String image;
  final String title;
  final Function onTap;
  const RowItem({
    Key key,
    @required this.image,
    @required this.title,
    @required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Image.asset(
            image,
            width: 40,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
