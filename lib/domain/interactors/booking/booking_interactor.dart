import 'dart:async';
import 'package:dio/dio.dart';
import 'package:hotel_test_e_m/data/repositories/booking/booking_repository.dart';
import 'package:hotel_test_e_m/domain/entities/booking/booking_info_entity.dart';
import 'package:hotel_test_e_m/domain/entities/hotel/hotel_info_entity.dart';
import 'package:hotel_test_e_m/domain/entities/room/room_info_entity.dart';

class BookingInteractor {
  const BookingInteractor(this._repository);

  final IBookingRepository _repository;

  Future<BookingInfoEntity?> getBookingInfo({
    CancelToken? cancelToken,
  }) async {
    if (_repository is BookingRepositoryNetwork) {
      return BookingInfoEntity.fromApiModel(await _repository.getBookingInfo());
    } else {
      return null;
    }
  }

  Future<HotelInfoEntity?> getHotelInfo({
    CancelToken? cancelToken,
  }) async {
    if (_repository is BookingRepositoryNetwork) {
      return HotelInfoEntity.fromApiModel(await _repository.getHotelInfo());
    } else {
      return null;
    }
  }

  Future<RoomInfoEntity?> getRoomInfo({
    CancelToken? cancelToken,
  }) async {
    if (_repository is BookingRepositoryNetwork) {
      return RoomInfoEntity.fromApiModel(await _repository.getRoomInfo());
    } else {
      return null;
    }
  }
}
