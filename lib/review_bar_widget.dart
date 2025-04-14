import 'package:flutter/material.dart';

class ReviewBar extends StatelessWidget {
  final Widget label;
  final double value;
  final Color color;
  final Color backgroundColor;
  final double space;
  final double thickness;
  final BorderRadiusGeometry barRadius;
  final TextDirection directionality;
  final TextDirection barDirectionality;
  const ReviewBar({
    super.key,
    required this.label,
    required this.value,
    this.color = Colors.amber,
    this.space = 20,
    this.thickness = 10,
    this.backgroundColor = const Color(0xFFEEEEEE),
    this.barRadius = const BorderRadius.all(Radius.circular(8)),
    this.directionality = TextDirection.ltr,
    this.barDirectionality = TextDirection.ltr,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Directionality(
        textDirection: directionality,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            label,
            SizedBox(width: space),
            Directionality(
              textDirection: barDirectionality,
              child: Expanded(
                child: SizedBox(
                  height: thickness,
                  child: TweenAnimationBuilder<double>(
                    tween: Tween<double>(
                      begin: 0.0,
                      end: value.isFinite ? value : 0.0,
                    ),
                    duration: const Duration(milliseconds: 800),
                    curve: Curves.easeOutCubic,
                    builder: (context, animatedValue, _) {
                      return LinearProgressIndicator(
                        minHeight: thickness,
                        borderRadius: barRadius,
                        value: animatedValue,
                        valueColor: AlwaysStoppedAnimation<Color>(color),
                        backgroundColor: backgroundColor,
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
