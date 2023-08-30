import 'package:flutter/material.dart';

import 'image_animator.dart';

class CCPaddedNetworkImageFromSize extends StatelessWidget {
  CCPaddedNetworkImageFromSize(
      {required this.imageSize, required this.imageUrl, required this.padding});

  final String imageUrl;
  final Size imageSize;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: SizedBox.fromSize(
        size: imageSize,
        child: CCImageAnimator(
          provider: NetworkImage(
            imageUrl,
          ),
        ),
      ),
    );
  }
}
