import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final Color colors;
  final Color textColor;
  final VoidCallback onPress;

  const Button({
    Key? key,
    required this.title,
    required this.colors,
    required this.textColor,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: GestureDetector(
          onTap: onPress,
          child: Container(
            height: 70,
            //width: 70,
            decoration: BoxDecoration(
              color: colors,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(fontSize: 24, color: textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
