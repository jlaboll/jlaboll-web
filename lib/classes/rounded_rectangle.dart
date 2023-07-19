import 'package:flutter/material.dart';

class RoundedRectangle extends RoundedRectangleBorder
    implements MaterialStateOutlinedBorder {
  const RoundedRectangle();

  @override
  OutlinedBorder? resolve(Set<MaterialState> states) {
    return RoundedRectangleBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
    );
  }
}
