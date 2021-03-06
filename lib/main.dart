import 'package:dependencies_flutter/dependencies_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:triviados/core/di/app_module.dart';
import 'package:triviados/presentation/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Color(0xffff274d)));
    return InjectorWidget.bind(
        bindFunc: (binder) => binder.install(AppModule()),
        child: MaterialApp(
          title: 'Triviados',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            accentColor: Color(0xffff274d),
          ),
          home: Scaffold(body: SafeArea(child: SplashPage())),
        ));
  }
}
