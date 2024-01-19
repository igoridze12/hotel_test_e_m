import 'package:json_annotation/json_annotation.dart';

part 'hotel_info_response.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class HotelInfoResponse {
  const HotelInfoResponse({
    this.id,
    this.name,
    this.address,
    this.minimalPrice,
    this.priceForIt,
    this.rating,
    this.ratingName,
    this.imageUrls,
    this.aboutTheHotel,
  });

  factory HotelInfoResponse.fromJson(Map<String, dynamic> json) => _$HotelInfoResponseFromJson(json);

  final num? id;
  final String? name;
  @JsonKey(name: 'adress')
  final String? address;
  final num? minimalPrice;
  final String? priceForIt;
  final num? rating;
  final String? ratingName;
  final List<String?>? imageUrls;
  final AboutTheHotelModel? aboutTheHotel;
}

@JsonSerializable(
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class AboutTheHotelModel {
  const AboutTheHotelModel({
    this.description,
    this.peculiarities,
  });

    factory AboutTheHotelModel.fromJson(Map<String, dynamic> json) => _$AboutTheHotelModelFromJson(json);

  final String? description;
  final List<String?>? peculiarities;
}