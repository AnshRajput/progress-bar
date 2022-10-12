import 'package:flutter/material.dart';

import 'progress_bar_styles.dart';

class RoundedProgressBar extends StatefulWidget {
  final Color color;
  final double percent;
  final double height;
  final RoundedProgressBarStyle? style;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? paddingChildLeft;
  final EdgeInsetsGeometry? paddingChildRight;
  final Widget? childCenter;
  final Widget? childLeft;
  final Widget? childRight;
  final bool reverse;
  final int milliseconds;
  final BorderRadiusGeometry? borderRadius;
  final Color backgroundColor;

  RoundedProgressBar(
      {this.percent = 40,
      this.height = 50,
      required this.color,
      this.style,
      required this.backgroundColor,
      this.margin,
      this.reverse = false,
      this.childCenter,
      this.childLeft,
      this.childRight,
      this.milliseconds = 500,
      this.borderRadius,
      this.paddingChildLeft,
      this.paddingChildRight}) {
    assert(percent >= 0);
    assert(height > 0);
  }

  @override
  State<StatefulWidget> createState() => RoundedProgressBarState();
}

class RoundedProgressBarState extends State<RoundedProgressBar> {
  late double width;
  double? maxWidth;
  double? widthProgress;
  RoundedProgressBarStyle? style;
  Widget? childCenter;
  AlignmentGeometry alignment = AlignmentDirectional.centerStart;
  BorderRadiusGeometry? borderRadius;
  EdgeInsetsGeometry? paddingChildLeft;
  EdgeInsetsGeometry? paddingChildRight;
  Color? color;
  Color? backgroundColor;

  @override
  void initState() {
    if (widget.style == null) {
      style = RoundedProgressBarStyle();
    } else {
      style = widget.style;
    }
    color = widget.color;
    backgroundColor = widget.backgroundColor;

    if (widget.reverse) {
      alignment = AlignmentDirectional.centerEnd;
    }

    if (widget.borderRadius == null) {
      borderRadius = BorderRadius.circular(12);
    } else {
      borderRadius = widget.borderRadius;
    }

    if (widget.paddingChildLeft == null) {
      paddingChildLeft = const EdgeInsets.all(16);
    } else {
      paddingChildLeft = widget.paddingChildLeft;
    }

    if (widget.paddingChildRight == null) {
      paddingChildRight = const EdgeInsets.all(16);
    } else {
      paddingChildRight = widget.paddingChildRight;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      width = constraint.maxWidth;
      widthProgress = width * widget.percent / 100;
      return Container(
          margin: widget.margin,
          decoration:
              BoxDecoration(borderRadius: borderRadius, color: Colors.white),
          padding: EdgeInsets.all(style!.borderWidth),
          child: Column(children: <Widget>[
            Container(
                constraints: BoxConstraints.expand(height: widget.height),
                decoration: BoxDecoration(
                    borderRadius: borderRadius, color: backgroundColor),
                child: Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
                  Expanded(
                      child: Stack(alignment: alignment, children: <Widget>[
                    AnimatedContainer(
                      duration: Duration(milliseconds: widget.milliseconds),
                      width: widthProgress,
                      decoration: BoxDecoration(
                          borderRadius: borderRadius, color: color),
                    ),
                    Center(child: widget.childCenter),
                    Padding(
                      padding: paddingChildLeft!,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: widget.childLeft),
                    ),
                    Padding(
                      padding: paddingChildRight!,
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: widget.childRight),
                    )
                  ]))
                ]))
          ]));
    });
  }
}
