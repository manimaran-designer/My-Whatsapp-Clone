import 'package:flutter/material.dart';

class SmallFloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: RawMaterialButton(
        fillColor: Colors.white,
        shape: CircleBorder(),
        elevation: 8,
        child: Icon(
          Icons.edit,
          color: Colors.black54,
        ),
        onPressed: () {},
      ),
    );
  }
}
