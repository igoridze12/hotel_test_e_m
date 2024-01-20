import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'booking_info_response.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class BookingInfoResponse {
  const BookingInfoResponse({
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

  static DateTime? datetimeParser(String? dtString) => DateFormat('d.M.y').tryParse(dtString ?? '');

  factory BookingInfoResponse.fromJson(Map<String, dynamic> json) => _$BookingInfoResponseFromJson(json);

  final num? id;
  final String? hotelName;
  @JsonKey(name: 'hotelAdress')
  final String? hotelAddress;
  final num? horating;
  final String? ratingName;
  final String? departure;
  final String? arrivalCountry;
  @JsonKey(fromJson: datetimeParser)
  final DateTime? tourDateStart;
  @JsonKey(fromJson: datetimeParser)
  final DateTime? tourDateStop;
  final num? numberOfNights;
  final String? room;
  final String? nutrition;
  final num? tourPrice;
  final num? fullCharge;
  final num? serviceCharge;
}
