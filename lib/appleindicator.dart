library appleindicator;



import 'package:flutter/material.dart';

class AppleLinearProgressIndicator extends StatefulWidget {
  const AppleLinearProgressIndicator({super.key, required this.controller});

  final AnimationController controller;

  @override
  State<AppleLinearProgressIndicator> createState() =>
      _AppleLinearProgressIndicatorState();
}

class _AppleLinearProgressIndicatorState
    extends State<AppleLinearProgressIndicator> with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 100),
    )..addListener(() {
      setState(() {});
    });
    controller.repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        // border: Border.all(color: Colors.white),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: LinearProgressIndicator(
          color: Colors.white,
          backgroundColor: const Color(0XFF7C7B7C),
          value: widget.controller.value,
        ),
      ),
    );
  }
}
