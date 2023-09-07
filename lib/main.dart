import 'package:flutter/material.dart';
import 'package:rw12306client/page/ui_pages_home.dart';
import 'package:rw12306client/page/ui_pages_order.dart';
import 'package:rw12306client/page/ui_pages_min.dart';
import 'dart:io';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
  if (Platform.isAndroid) {
    // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectIndex = 0;
  List<String> _pageNames = ["首页", "订单", "我的"];
  List<Widget> _navPages = [
    HomePage(title: "首页"),
    OrderPage(title: "订单"),
    MinPage(title: "我的")
  ];

  @override
  void initState() {
    super.initState();
  }

  void onSelectPage(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _navPages[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: _pageNames[0]),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: _pageNames[1]),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: _pageNames[2]),
        ],
        currentIndex: _selectIndex,
        onTap: onSelectPage,
        selectedItemColor: Colors.blue,
      ),
    );
  }
}
