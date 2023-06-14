import 'package:flutter/material.dart';
import 'package:jlaboll_web/packages/helpers/methods.dart';
import 'package:jlaboll_web/packages/material_states/material_states.dart';
import 'package:jlaboll_web/widgets/image_loading_animator.dart';

class SkillButton extends StatelessWidget {
  const SkillButton({required this.link, required this.assetLocation});

  final String link;
  final String assetLocation;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ButtonStyle(
        shape: RoundedRectangle(),
        backgroundColor: OnPressOpacity(
          colorValue:
              Theme.of(context).colorScheme.surfaceVariant.withAlpha(127).value,
          opacity: 0.2,
        ),
      ),
      onPressed: () => launchURL(link),
      child: ImageLoadingAnimator(
        imageProvider: _buildImageProvider(),
      ),
    );
  }

  ImageProvider<Object> _buildImageProvider() {
    return NetworkImage(assetLocation);
  }
}
