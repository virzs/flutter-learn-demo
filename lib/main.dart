import 'package:flutter/material.dart';
import 'package:flutter_proj/routes/index.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Startup Name Generator',
      theme: new ThemeData(primaryColor: Colors.white),
      initialRoute: '/',
      routes: routes(context),
      // 处理路由，只对routes中命名的路由生效
      onGenerateRoute: (RouteSettings settings) {
        return null;
      },
    );
  }
}
