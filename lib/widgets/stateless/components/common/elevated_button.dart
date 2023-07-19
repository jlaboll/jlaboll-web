import 'package:flutter/material.dart';

class CCElevatedButton extends StatelessWidget {
  CCElevatedButton({required this.buttonText, required this.onPress});

  final String buttonText;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Text(buttonText),
    );
  }
}
