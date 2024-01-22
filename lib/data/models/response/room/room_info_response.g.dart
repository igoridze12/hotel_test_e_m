// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomsInfoResponse _$RoomsInfoResponseFromJson(Map<String, dynamic> json) =>
    RoomsInfoResponse(
      rooms: (json['rooms'] as List<dynamic>?)
          ?.map((e) => RoomInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

RoomInfo _$RoomInfoFromJson(Map<String, dynamic> json) => RoomInfo(
      id: json['id'] as num?,
      name: json['name'] as String?,
      price: json['price'] as num?,
      pricePer: json['price_per'] as String?,
      peculiarities: (json['peculiarities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      imageUrls: (json['image_urls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );
