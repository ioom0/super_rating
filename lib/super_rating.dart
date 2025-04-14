library super_rating;

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'review_bar_widget.dart';

class SuperRating extends StatefulWidget {
  final int counter;
  final double average;
  final bool showAverage;
  final bool showTextAverage;
  final bool showReviewBars;
  final TextStyle averageStyle;
  final int counterFiveStars;
  final int counterFourStars;
  final int counterThreeStars;
  final int counterTwoStars;
  final int counterOneStars;
  final Widget labelCounterFiveStars;
  final Widget labelCounterFourStars;
  final Widget labelCounterThreeStars;
  final Widget labelCounterTwoStars;
  final Widget labelCounterOneStars;
  final String label;
  final TextStyle labelStyle;
  final Color color;
  final Color backgroundColor;
  final double space;
  final double thickness;
  final Color starColor;
  final CrossAxisAlignment alignment;
  final BorderRadiusGeometry barRadius;
  final TextDirection directionality;
  final TextDirection barDirectionality;

  const SuperRating({
    super.key,
    required this.counter,
    this.average = 0.0,
    this.showAverage = true,
    this.showReviewBars = true,
    this.showTextAverage = true,
    this.averageStyle = const TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
    this.counterFiveStars = 0,
    this.counterFourStars = 0,
    this.counterThreeStars = 0,
    this.counterTwoStars = 0,
    this.counterOneStars = 0,
    this.labelCounterFiveStars = const Text('5', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
    this.labelCounterFourStars = const Text('4', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
    this.labelCounterThreeStars = const Text('3', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
    this.labelCounterTwoStars = const Text('2', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
    this.labelCounterOneStars = const Text('1', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
    this.label = 'Ratings',
    this.labelStyle = const TextStyle(fontWeight: FontWeight.w600),
    this.color = Colors.amber,
    this.backgroundColor = const Color(0xFFEEEEEE),
    this.space = 20,
    this.thickness = 10,
    this.starColor = Colors.amber,
    this.alignment = CrossAxisAlignment.center,
    this.barRadius = const BorderRadius.all(Radius.circular(8)),
    this.directionality = TextDirection.ltr,
    this.barDirectionality = TextDirection.ltr,
  });


  @override
  State<SuperRating> createState() => _SuperRatingState();
}

class _SuperRatingState extends State<SuperRating> {
  late final ValueNotifier<double> averageNotifier;

  @override
  void initState() {
    super.initState();
    averageNotifier = ValueNotifier(widget.average);
  }

  @override
  void dispose() {
    averageNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.showReviewBars)
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ReviewBar(
                  label: widget.labelCounterFiveStars,
                  value: widget.counterFiveStars / widget.counter,
                  color: widget.color,
                  space: widget.space,
                  thickness: widget.thickness,
                  backgroundColor: widget.backgroundColor,
                  barRadius: widget.barRadius,
                  directionality: widget.directionality,
                  barDirectionality: widget.barDirectionality,
                ),
                ReviewBar(
                  label: widget.labelCounterFourStars,
                  value: widget.counterFourStars / widget.counter,
                  color: widget.color,
                  space: widget.space,
                  thickness: widget.thickness,
                  backgroundColor: widget.backgroundColor,
                  barRadius: widget.barRadius,
                  directionality: widget.directionality,
                  barDirectionality: widget.barDirectionality,
                ),
                ReviewBar(
                  label: widget.labelCounterThreeStars,
                  value: widget.counterThreeStars / widget.counter,
                  color: widget.color,
                  space: widget.space,
                  thickness: widget.thickness,
                  backgroundColor: widget.backgroundColor,
                  barRadius: widget.barRadius,
                  directionality: widget.directionality,
                  barDirectionality: widget.barDirectionality,
                ),
                ReviewBar(
                  label: widget.labelCounterTwoStars,
                  value: widget.counterTwoStars / widget.counter,
                  color: widget.color,
                  space: widget.space,
                  thickness: widget.thickness,
                  backgroundColor: widget.backgroundColor,
                  barRadius: widget.barRadius,
                  directionality: widget.directionality,
                  barDirectionality: widget.barDirectionality,
                ),
                ReviewBar(
                  label: widget.labelCounterOneStars,
                  value: widget.counterOneStars / widget.counter,
                  color: widget.color,
                  space: widget.space,
                  thickness: widget.thickness,
                  backgroundColor: widget.backgroundColor,
                  barRadius: widget.barRadius,
                  directionality: widget.directionality,
                  barDirectionality: widget.barDirectionality,
                ),
              ],
            ),
          ),
        if (widget.showAverage) ...[
          const SizedBox(width: 30),
          Flexible(
            child: ValueListenableBuilder<double>(
              valueListenable: averageNotifier,
              builder: (context, average, _) {
                return Column(
                  crossAxisAlignment: widget.alignment,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (widget.showTextAverage)
                      Text(average.toStringAsFixed(1), style: widget.averageStyle),
                    RatingBar.builder(
                      initialRating: average,
                      minRating: 1,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 28,
                      unratedColor: widget.backgroundColor,
                      itemBuilder: (context, _) => Icon(Icons.star, color: widget.starColor),
                      onRatingUpdate: (newRating) => averageNotifier.value = newRating,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "${widget.counter} ${widget.label}",
                      style: widget.labelStyle,
                      overflow: TextOverflow.fade,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ],
    );
  }
}

