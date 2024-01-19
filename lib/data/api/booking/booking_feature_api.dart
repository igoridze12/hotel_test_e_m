import 'package:dio/dio.dart';
import 'package:hotel_test_e_m/data/api/core/core_dio_factory.dart';
import 'package:hotel_test_e_m/data/models/response/hotel/hotel_info_response.dart';
import 'package:retrofit/retrofit.dart';

part 'booking_feature_api.g.dart';

@RestApi()
abstract class BookingFeatureApi {
  static const _getHotelInfoUrl = '/75000507-da9a-43f8-a618-df698ea7176d';
  static const _getRoomInfoUrl = '/157ea342-a8a3-4e00-a8e6-a87d170aa0a2';
  static const _getBookingInfoUrl = '/63866c74-d593-432c-af8e-f279d1a8d2ff';

  factory BookingFeatureApi(
    CoreDioFactory dioFactory, {
    String? baseUrl,
  }) =>
      _BookingFeatureApi(
        dioFactory.create(),
        baseUrl: baseUrl,
      );

  @GET(_getHotelInfoUrl)
  Future<HotelInfoResponse> getHotelInfo({
    @CancelRequest() CancelToken? cancelToken,
  });
}
