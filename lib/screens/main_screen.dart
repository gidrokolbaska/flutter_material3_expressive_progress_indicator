import 'package:flutter/material.dart';
import 'package:flutter_material3_expressive_progress_indicator/widgets/m3_expressive_linear_indicator.dart';

class IndicatorExampleScreen extends StatefulWidget {
  const IndicatorExampleScreen({super.key});

  @override
  State<IndicatorExampleScreen> createState() => _IndicatorExampleScreenState();
}

class _IndicatorExampleScreenState extends State<IndicatorExampleScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 4))
          ..addListener(() {
            setState(() {});
          });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16.0,
        children: [
          ExpressiveProgressIndicator(
            value: _controller.value,
            minHeight: 10,
            progressIndicatorType: ProgressIndicatorType.m3Expressive,
            amplitude: 5,
            frequency: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilledButton(
                onPressed: () {
                  _controller.animateTo(1.0);
                },
                child: Text('+'),
              ),
              FilledButton(
                onPressed: () {
                  _controller.animateTo(0.0);
                },
                child: Text('-'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
