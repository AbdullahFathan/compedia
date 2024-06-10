import 'package:compedia/config/routes/app_routes.dart';
import 'package:compedia/config/translation/app_translation.dart';
import 'package:compedia/features/main_app/main_app_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:compedia/config/themes/app_theme.dart';
import 'package:get/get.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('id'),
      translations: Messages(),
      theme: ThemeClass.lightTheme,
      getPages: AppRoute.appPages,
      initialRoute: MainAppPage.route,
    );
  }
}
