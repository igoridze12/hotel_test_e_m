import 'package:dio/dio.dart';
import 'package:hotel_test_e_m/data/api/booking_api/booking_api.dart';
import 'package:hotel_test_e_m/data/models/response/booking/booking_info_response.dart';
import 'package:hotel_test_e_m/data/models/response/hotel/hotel_info_response.dart';
import 'package:hotel_test_e_m/data/models/response/room/room_info_response.dart';

abstract class IBookingRepository {
  Future getHotelInfo() {
    throw UnimplementedError();
  }

  Future getRoomInfo() {
    throw UnimplementedError();
  }

  Future getBookingInfo() {
    throw UnimplementedError();
  }
}

class BookingRepositoryNetwork implements IBookingRepository {
  const BookingRepositoryNetwork(this._api);

  final BookingApi _api;

  @override
  Future<BookingInfoResponse> getBookingInfo({CancelToken? cancelToken}) => _api.getBookingInfo(cancelToken: cancelToken);

  @override
  Future<HotelInfoResponse> getHotelInfo({CancelToken? cancelToken}) => _api.getHotelInfo(cancelToken: cancelToken);

  @override
  Future<RoomsInfoResponse> getRoomInfo({CancelToken? cancelToken}) => _api.getRoomInfo(cancelToken: cancelToken);
}
