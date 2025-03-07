import 'package:flutter/material.dart';
import 'package:flutter_basics/widgets/input_widget_example.dart';
import 'package:flutter_basics/widgets/info_widget_example.dart';
import 'package:flutter_basics/widgets/animation_widget_example.dart';

class WidgetGallery extends StatefulWidget {
  final String title;

  const WidgetGallery({super.key, required this.title});

  @override
  State<WidgetGallery> createState() => _WidgetGalleryState();
}

class _WidgetGalleryState extends State<WidgetGallery> {
  // 상태 변수
  int _currentPageIndex = 0; //  선택된 탭 정보 상태

  //  탭 선택시 표시할 페이지 리스트
  final List<Widget> _pages = [
    InputWidgetExample(),
    InfoWidgetExample(),
    AnimationWidgetExample(),
  ];
  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: IndexedStack(index: _currentPageIndex, children: _pages),

      // Center(
      //   child: Text(
      //     "위젯 갤러리",
      //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      //   ),
      // ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        destinations: <Widget>[
          NavigationDestination(icon: Icon(Icons.keyboard), label: "입력"),
          NavigationDestination(icon: Icon(Icons.info), label: "정보 표시"),
          NavigationDestination(icon: Icon(Icons.animation), label: "애니메이션"),
        ],
      ),
    );
  }
}
