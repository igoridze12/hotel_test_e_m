import 'package:flutter/material.dart';
import 'package:hotel_test_e_m/di/app/app_providers.dart';
import 'package:hotel_test_e_m/di/hotel/hotel_providers.dart';
import 'package:hotel_test_e_m/presentation/pages/hotel/hotel_info_page.dart';
import 'package:hotel_test_e_m/presentation/theme/default_colors.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(
    MultiProvider(
      providers: [...appProviders],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: DefaultColors.textGrey),
      home: MultiProvider(
        providers: [...hotelProviders],
        child: const HotelInfoPage(),
      ),
    );
  }
}
