import 'package:flutter/material.dart';

class InfoWidgetExample extends StatelessWidget {
  const InfoWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "정보 표시 위젯 예제",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
