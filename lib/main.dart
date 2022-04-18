import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'service/service.dart';
import 'utils/binding/my_binding.dart';
import 'utils/theme/theme.dart';
import 'view/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
      initialBinding: MyBinding(),
      home: HomeScreen(),
    );
  }
}
