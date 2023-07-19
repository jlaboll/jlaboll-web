import 'package:flutter/material.dart';

class CCImageAnimator extends StatelessWidget {
  CCImageAnimator({required this.provider, this.fit});

  final ImageProvider<Object> provider;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Image(
      fit: fit,
      image: provider,
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }
        return Center(
          child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                : null,
          ),
        );
      },
    );
  }
}
