import 'package:flutter/material.dart';

class FadeIn extends StatefulWidget {
  const FadeIn({
    Key? key,
    this.duration = const Duration(milliseconds: 500),
    required this.child,
  }) : super(key: key);

  final Duration duration;
  final Widget child;

  @override
  FadeInState createState() => FadeInState();
}

class FadeInState extends State<FadeIn> with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );

    _opacityAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _opacityAnimation,
      child: widget.child,
    );
  }
}
