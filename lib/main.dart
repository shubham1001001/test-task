import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sales/providers/nav_provider.dart';
import 'package:sales/providers/record_provider.dart';

import 'core/constants/colors.dart';
import 'core/routes/app_routes.dart';
import 'providers/sales_order_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SalesOrderProvider()),
        ChangeNotifierProvider(create: (_) => RecordProvider()),
        ChangeNotifierProvider(create: (_) => NavProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sales Order App',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        primaryColor: AppColors.primary,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.accent, primary: AppColors.primary),
        appBarTheme: const AppBarTheme(backgroundColor: AppColors.primary, foregroundColor: AppColors.appBackColor),
      ),
      initialRoute: AppRoutes.home,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
