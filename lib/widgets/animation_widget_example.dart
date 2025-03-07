import 'package:flutter/material.dart';

class AnimationWidgetExample extends StatefulWidget {
  const AnimationWidgetExample({super.key});

  @override
  State<AnimationWidgetExample> createState() => _AnimationWidgetExampleState();
}

class _AnimationWidgetExampleState extends State<AnimationWidgetExample> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "애니메이션 예제",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
