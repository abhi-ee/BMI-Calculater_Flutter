import 'package:flutter/material.dart';

class ReuseableContainer extends StatelessWidget {
  // ignore: use_key_in_widget_constructors

  const ReuseableContainer(
      {super.key,
      required this.colour,
      required this.childCard,
      required this.onPress});
  final Color colour;
  final Widget childCard;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childCard,
        //  colour: Color(0xFF1D1E33),
        // height: 200.0,
        // width: 170.0,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
