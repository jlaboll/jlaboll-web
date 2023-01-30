import 'package:flutter/material.dart';

class LoadingIndicator extends StatefulWidget {
  final Color color;
  const LoadingIndicator({required this.color});

  @override
  _LoadingIndicatorState createState() => _LoadingIndicatorState();
}

class _LoadingIndicatorState extends State<LoadingIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final Color color = widget.color;
        final double size = constraints.maxWidth;
        final double dotSize = size * 0.17;
        final double negativeSpace = size - (4 * dotSize);
        final double gapBetweenDots = negativeSpace / 3;
        final double previousDotPosition = -(gapBetweenDots + dotSize);
        final Interval intervalDown = const Interval(0.0, 0.4);
        final Interval intervalUp = const Interval(0.3, 0.7);

        return AnimatedBuilder(
          animation: _animationController,
          builder: (_, __) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _buildScalingWidget(
                  _scaleDown(),
                  intervalDown,
                  _buildDot(dotSize, color),
                ),
                _buildSlidingWidget(
                  previousDotPosition,
                  _buildDot(dotSize, color),
                ),
                _buildSlidingWidget(
                  previousDotPosition,
                  _buildDot(dotSize, color),
                ),
                Stack(
                  children: <Widget>[
                    _buildScalingWidget(
                      _scaleUp(),
                      intervalUp,
                      _buildDot(dotSize, color),
                    ),
                    _buildSlidingWidget(
                      previousDotPosition,
                      _buildDot(dotSize, color),
                    ),
                  ],
                ),
              ],
            );
          },
        );
      },
    );
  }

  Widget _buildDot(double dotSize, Color color) {
    return Container(
      width: dotSize,
      height: dotSize,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _buildScalingWidget(
      Tween<double> scale, Interval interval, Widget child) {
    return Transform.scale(
      scale: scale
          .animate(
            CurvedAnimation(
              parent: _animationController,
              curve: interval,
            ),
          )
          .value,
      child: child,
    );
  }

  Widget _buildSlidingWidget(double previousPosition, Widget child) {
    return Transform.translate(
      offset: Tween<Offset>(
        begin: Offset.zero,
        end: Offset(previousPosition, 0),
      )
          .animate(
            CurvedAnimation(
              parent: _animationController,
              curve: const Interval(
                0.22,
                0.82,
              ),
            ),
          )
          .value,
      child: child,
    );
  }

  Tween<double> _scaleDown() => Tween<double>(
        begin: 1.0,
        end: 0.0,
      );

  Tween<double> _scaleUp() => Tween<double>(
        begin: 0.0,
        end: 1.0,
      );

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
