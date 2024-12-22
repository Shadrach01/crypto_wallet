import 'package:crypto_wallet/core/routes/app_routes.dart';
import 'package:crypto_wallet/core/routes/app_routes_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutesNames.onboardingRoute,
      getPages: getPagesRoutes,
    );
  }
}
