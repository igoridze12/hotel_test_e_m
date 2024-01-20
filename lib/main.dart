import 'package:flutter/material.dart';
import 'package:hotel_test_e_m/data/api/booking/booking_feature_api.dart';
import 'package:hotel_test_e_m/data/api/core/core_dio_factory.dart';

void main() async {
  final hotelApi = BookingFeatureApi(DefaultCoreDioFactory());
  final resp = await hotelApi.getHotelInfo();
  print(resp.address ?? 'empty');
  final resp1 = await hotelApi.getBookingInfo();
  print(resp1.tourDateStart ?? DateTime.now());
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
