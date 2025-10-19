import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoadingSpinner extends StatefulWidget {
  final double padding;
  final String? text;

  const LoadingSpinner({super.key, this.padding = 8.0, this.text});

  @override
  State<StatefulWidget> createState() => LoadingSpinnerState();
}

class LoadingSpinnerState extends State<LoadingSpinner>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 4),
    vsync: this,
  )..repeat();
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    // Contenders: easeInOutSine, fastEaseInToSlowEaseOut, fastOutSlowIn
    curve: Curves.easeInOutSine,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RotationTransition(
          turns: _animation,
          child: SvgPicture.asset(
            "assets/d20.svg",
            semanticsLabel: "D20 Loading Spinner",
          ),
        ),
        if (widget.text != null && widget.text!.isNotEmpty)
          Padding(
            padding: EdgeInsets.only(top: widget.padding),
            child: Text(widget.text!),
          ),
      ],
    );
  }
}
