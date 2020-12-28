import 'package:flutter/material.dart';

class HelperIcons extends StatelessWidget {
  final IconData icon;
  final Color color;
  final double size;
  Function function;
  HelperIcons(this.icon, this.function,
      {this.color = Colors.grey, this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        color: color,
        size: size,
      ),
      onPressed: function,
    );
  }
}
