// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingInfoResponse _$BookingInfoResponseFromJson(Map<String, dynamic> json) =>
    BookingInfoResponse(
      id: json['id'] as num?,
      hotelName: json['hotel_name'] as String?,
      hotelAddress: json['hotelAdress'] as String?,
      horating: json['horating'] as num?,
      ratingName: json['rating_name'] as String?,
      departure: json['departure'] as String?,
      arrivalCountry: json['arrival_country'] as String?,
      tourDateStart: BookingInfoResponse.datetimeParser(
          json['tour_date_start'] as String?),
      tourDateStop:
          BookingInfoResponse.datetimeParser(json['tour_date_stop'] as String?),
      numberOfNights: json['number_of_nights'] as num?,
      room: json['room'] as String?,
      nutrition: json['nutrition'] as String?,
      tourPrice: json['tour_price'] as num?,
      fullCharge: json['full_charge'] as num?,
      serviceCharge: json['service_charge'] as num?,
    );
