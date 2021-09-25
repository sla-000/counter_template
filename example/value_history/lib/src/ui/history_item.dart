import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HistoryItem extends StatefulWidget {
  const HistoryItem({
    Key? key,
    required this.increment,
    required this.onCompleted,
  }) : super(key: key);

  final int increment;
  final VoidCallback onCompleted;

  static const Duration kDuration = Duration(milliseconds: 1500);

  @override
  HistoryItemState createState() => HistoryItemState();
}

class HistoryItemState extends State<HistoryItem> with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _opacityAnimation;
  late final Animation<double> _sizeAnimation;
  late final Animation<AlignmentGeometry> _alignAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this, // the SingleTickerProviderStateMixin
      duration: HistoryItem.kDuration,
    );

    _opacityAnimation = TweenSequence<double>(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.0, end: 1.0).chain(CurveTween(curve: Curves.ease)),
          weight: 50.0,
        ),
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1.0, end: 0.0).chain(CurveTween(curve: Curves.ease.flipped)),
          weight: 50.0,
        ),
      ],
    ).animate(_controller);

    _sizeAnimation = Tween<double>(begin: 5.0, end: 46.0).chain(CurveTween(curve: Curves.ease)).animate(_controller);

    _alignAnimation = AlignmentTween(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
    ).animate(_controller);

    _controller.forward();

    _controller.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        widget.onCompleted();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlignTransition(
      alignment: _alignAnimation,
      child: FadeTransition(
        opacity: _opacityAnimation,
        child: AnimatedBuilder(
          animation: _sizeAnimation,
          builder: (BuildContext context, Widget? child) {
            return SizedBox(
              width: _sizeAnimation.value,
              height: _sizeAnimation.value,
              child: child,
            );
          },
          child: FittedBox(
            child: Text(
              '+${widget.increment}',
            ),
          ),
        ),
      ),
    );
  }
}
