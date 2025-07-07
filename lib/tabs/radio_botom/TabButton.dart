import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final String label;
  final bool selected;

  TabButton({required this.label, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: selected ? Color(0xFFF6C26B) : Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: selected ? Colors.black : Color(0xFFF6C26B),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}