// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HotelInfoResponse _$HotelInfoResponseFromJson(Map<String, dynamic> json) =>
    HotelInfoResponse(
      id: json['id'] as num?,
      name: json['name'] as String?,
      address: json['adress'] as String?,
      minimalPrice: json['minimal_price'] as num?,
      priceForIt: json['price_for_it'] as String?,
      rating: json['rating'] as num?,
      ratingName: json['rating_name'] as String?,
      imageUrls: (json['image_urls'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      aboutTheHotel: json['about_the_hotel'] == null
          ? null
          : AboutTheHotelModel.fromJson(
              json['about_the_hotel'] as Map<String, dynamic>),
    );

AboutTheHotelModel _$AboutTheHotelModelFromJson(Map<String, dynamic> json) =>
    AboutTheHotelModel(
      description: json['description'] as String?,
      peculiarities: (json['peculiarities'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );
