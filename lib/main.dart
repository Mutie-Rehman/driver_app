import 'package:driver_app/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;
  runApp(MyApp(
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Driver's App",
          // theme: ThemeData(
          //   primarySwatch: Colors.blue,
          //   useMaterial3: true,
          // ),
          home: const MySplashScreen())));
}

class MyApp extends StatefulWidget {
  final Widget? child;

  MyApp({this.child});

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_MyAppState>()!.restartApp();
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Key key = UniqueKey();
  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child!,
    );
  }
}
