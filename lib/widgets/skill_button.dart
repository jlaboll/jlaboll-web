import 'package:flutter/material.dart';
import 'package:jlaboll_web/helpers/helper_methods.dart';
import 'package:jlaboll_web/material_states/on_press_opacity.dart';
import 'package:jlaboll_web/widgets/image_loading_animator.dart';

import '../material_states/rounded_rectangle.dart';

class SkillButton extends StatelessWidget {
  const SkillButton(
      {required this.link,
      required this.localAsset,
      required this.assetLocation});

  final String link;
  final bool localAsset;
  final String assetLocation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: FilledButton(
        style: ButtonStyle(
          shape: RoundedRectangle(),
          backgroundColor: OnPressOpacity(
            colorValue: Theme.of(context)
                .colorScheme
                .surfaceVariant
                .withAlpha(127)
                .value,
            opacity: 0.2,
          ),
        ),
        onPressed: () => launchURL(link),
        child: ImageLoadingAnimator(
          imageProvider: _buildImageProvider(),
        ),
      ),
    );
  }

  ImageProvider<Object> _buildImageProvider() {
    if (localAsset) return AssetImage(assetLocation);
    return NetworkImage(assetLocation);
  }
}
