import 'package:flutter/material.dart';

class AnimationWidgetExample extends StatefulWidget {
  const AnimationWidgetExample({super.key});

  @override
  State<AnimationWidgetExample> createState() => _AnimationWidgetExampleState();
}

class _AnimationWidgetExampleState extends State<AnimationWidgetExample> {
  // 상태 변수
  bool selected = false; //  AnimaitedContainer가 선택 여부 상태
  bool selectedOpacity = false; //  AnimatedOpacity의 선택 여부 상태
  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Text(
    //     "애니메이션 예제",
    //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    //   ),
    // );
    return Column(
      children: <Widget>[
        Text(
          "animationContainer Example:",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),

        SizedBox(height: 20),
        GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: AnimatedContainer(
            width: selected ? 200.0 : 100.0,
            height: selected ? 100.0 : 200.0,
            color: selected ? Colors.blue : Colors.red,
            alignment:
                selected ? Alignment.center : AlignmentDirectional.topCenter,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(size: 74),
          ),
        ),
        SizedBox(height: 20),
        Text(
          "AnimatedOpacity Example:",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),

        GestureDetector(
          onTap: () {
            setState(() {
              selectedOpacity = !selectedOpacity;
            });
          },
          child: AnimatedOpacity(
            opacity: selectedOpacity ? 1.0 : 0.0,
            duration: const Duration(seconds: 2),
            child: const FlutterLogo(size: 100),
          ),
        ),
      ],
    );
  }
}
