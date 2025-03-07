import 'package:flutter/material.dart';

class InfoWidgetExample extends StatelessWidget {
  const InfoWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Text(
    //     "정보 표시 위젯 예제",
    //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    //   ),
    // );
    return Column(
      children: <Widget>[
        Text(
          'Image Widget: from Assets',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Tooltip(
          message: "안드로이드 로고입니다",
          child: Image.asset('assets/images/android.png'),
        ),
        SizedBox(height: 20),
        Text(
          "Images Widget from Network",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Tooltip(
          message: "네트워크로부터 불러온 이미지",
          child: Image.network(
            "https://petapixel.com/assets/uploads/2016/02/CHL06867.jpg",
            width: 350,
          ),
        ),
        SizedBox(height: 20),
        Text(
          "Icon Widgets",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.favorite, color: Colors.red),
            Icon(Icons.mail, color: Colors.blue),
            Icon(Icons.settings, color: Colors.green),
          ],
        ),
      ],
    );
  }
}
