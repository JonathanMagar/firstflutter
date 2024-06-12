import 'dart:ui';

import 'package:firstclass/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MobileLikeScrollBehaviour(),
      home: Dashboard(),
    );
  }
}

class MobileLikeScrollBehaviour extends MaterialScrollBehavior {
  Set<PointerDeviceKind> get dragDevice => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
