import 'package:hotel_test_e_m/data/models/response/booking/booking_info_response.dart';

class BookingInfoEntity {
  const BookingInfoEntity({
    this.id,
    this.hotelName,
    this.hotelAddress,
    this.horating,
    this.ratingName,
    this.departure,
    this.arrivalCountry,
    this.tourDateStart,
    this.tourDateStop,
    this.numberOfNights,
    this.room,
    this.nutrition,
    this.tourPrice,
    this.fullCharge,
    this.serviceCharge,
  });

  factory BookingInfoEntity.fromApiModel(BookingInfoResponse apiModel) => BookingInfoEntity(
        id: apiModel.id?.toInt(),
        hotelName: apiModel.hotelName,
        hotelAddress: apiModel.hotelAddress,
        horating: apiModel.horating?.toDouble(),
        ratingName: apiModel.ratingName,
        departure: apiModel.departure,
        arrivalCountry: apiModel.arrivalCountry,
        tourDateStart: apiModel.tourDateStart,
        tourDateStop: apiModel.tourDateStop,
        numberOfNights: apiModel.numberOfNights?.toInt(),
        room: apiModel.room,
        nutrition: apiModel.nutrition,
        tourPrice: apiModel.tourPrice?.toDouble(),
        fullCharge: apiModel.fullCharge?.toDouble(),
        serviceCharge: apiModel.serviceCharge?.toDouble(),
      );

  final int? id;
  final String? hotelName;
  final String? hotelAddress;
  final double? horating;
  final String? ratingName;
  final String? departure;
  final String? arrivalCountry;
  final DateTime? tourDateStart;
  final DateTime? tourDateStop;
  final int? numberOfNights;
  final String? room;
  final String? nutrition;
  final double? tourPrice;
  final double? fullCharge;
  final double? serviceCharge;
}
