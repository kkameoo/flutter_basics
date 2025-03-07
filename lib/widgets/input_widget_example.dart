import 'package:flutter/material.dart';

class InputWidgetExample extends StatefulWidget {
  const InputWidgetExample({super.key});

  @override
  State<InputWidgetExample> createState() => _InputWidgetExampleState();
}

class _InputWidgetExampleState extends State<InputWidgetExample> {
  //  텍스트 에디팅 컨트롤러
  final TextEditingController _controller = TextEditingController();

  //  상태 변수
  String _inputText = "";
  bool _isChecked = false;
  int _radioValue = 0;
  double _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Text(
    //     "입력 위젯 예시",
    //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    //   ),
    // );
    return Column(
      children: <Widget>[
        TextField(
          controller: _controller,
          decoration: const InputDecoration(labelText: "문장을 입력하세요"),
          onChanged: (text) {
            setState(() {
              _inputText = text;
            });
          },
        ),
        SizedBox(height: 20),
        Row(
          children: <Widget>[
            Checkbox(
              value: _isChecked,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value ?? false;
                });
              },
            ),
            Text("Check Me!"),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: <Widget>[
            Radio<int>(
              value: 0,
              groupValue: _radioValue,
              onChanged: (int? value) {
                setState(() {
                  _radioValue = value ?? 0;
                });
              },
            ),
            Text("Option 1"),
            Radio<int>(
              value: 1,
              groupValue: _radioValue,
              onChanged: (int? value) {
                setState(() {
                  _radioValue = value ?? 1;
                });
              },
            ),
            Text("Option 2"),
          ],
        ),
        SizedBox(height: 20),
        Slider(
          value: _sliderValue,
          min: 0.0,
          max: 100.0,
          onChanged: (double value) {
            setState(() {
              _sliderValue = value;
            });
          },
        ),
        Text("Slider Value: ${_sliderValue.toStringAsFixed(1)}"),
        SizedBox(height: 20),
        ElevatedButton(onPressed: () {}, child: Text("입력 내용 확인 (AlertDialog)")),
      ],
    );
  }
}
