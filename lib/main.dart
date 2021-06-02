import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_proj/pages/index/index.dart';
import 'package:flutter_proj/routes/index.dart';

void main() {
  // 透明状态栏
  final SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light);
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget _indexPage = IndexPage();

  @override
  void initState() {
    super.initState();
    Routes.initRoutes();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Startup Name Generator',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primaryColor: Colors.white),
      home: _indexPage,
      // 处理路由，只对routes中命名的路由生效
      onGenerateRoute: Routes.router.generator,
    );
  }
}
