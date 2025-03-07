import 'package:flutter/material.dart';
import 'package:flutter_basics/widget_gallery.dart';

void main() {
  runApp(const MyApp());
}

// 상태 없는 위젯
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // MaterialApp: 앱의 전체적 테마의 정보를 설정
    return MaterialApp(
      title: 'Flutter Demo',
      // 앱 젠체의 테마 정보
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // 앱의 기본 화면
      home: const MyHomePage(title: 'Flutter Demo Home Page'),

      // 라우팅 정보 추가
      routes: {
        '/gallery': (context) => const WidgetGallery(title: "widgetGallery"),
      },
    );
  }
}

// 상태 있는 위젯
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  // 위젯의 상태 생성

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// State: 위젯의 상태를 관리하는 클래스
class _MyHomePageState extends State<MyHomePage> {
  // State 변수
  // 내부 State 변경을 위해서는 반드시 setState 함수를 사용해야 한다
  int _counter = 0;

  // FAB onPressed Callback Function
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  // UI 렌더링 메서드
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            // const Spacer(),
            const SizedBox(height: 20),

            // 이벤트 테스트 페널
            GestureDetector(
              // 일반 위젯에게 사용자 인터렉션을 허용하는 위젯
              //  tap, double tap, long press 이벤트 발생
              // snackBar로 이벤트를 표시
              onTap: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Panle Tapped!")));
              },
              onDoubleTap: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Panel Doulbe Tapped")));
              },
              onLongPress: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Panel Long Tapped")));
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                height: 100,
                color: Colors.purple,
                child: const Center(
                  child: Text(
                    "제스쳐 테스터",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // ScaffoldMessenger.of(
                //   context,
                // ).showSnackBar(SnackBar(content: Text("위젯 갤러리로 ")));
                Navigator.pushNamed(context, '/gallery');
              },
              child: const Text("위젯 갤러리로 이동"),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
