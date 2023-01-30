import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/loading_indicator.dart';

class ImageLoadingAnimator extends StatelessWidget {
  const ImageLoadingAnimator({required this.imageProvider});
  final ImageProvider<Object> imageProvider;
  @override
  Widget build(BuildContext context) {
    return Image(
      image: imageProvider,
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 650),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return ScaleTransition(
              scale: animation,
              child: child,
            );
          },
          child: loadingProgress == null
              ? child
              : LoadingIndicator(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
        );
      },
    );
  }
}
