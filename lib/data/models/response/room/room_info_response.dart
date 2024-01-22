import 'package:json_annotation/json_annotation.dart';

part 'room_info_response.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class RoomsInfoResponse {
  //constructor
  const RoomsInfoResponse({this.rooms});
  //named constructor
  factory RoomsInfoResponse.fromJson(Map<String, dynamic> json) => _$RoomsInfoResponseFromJson(json);
  //attribute
  final List<RoomInfo>? rooms;
}

@JsonSerializable(
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class RoomInfo {
  const RoomInfo({
    this.id,
    this.name,
    this.price,
    this.pricePer,
    this.peculiarities,
    this.imageUrls,
  });

  factory RoomInfo.fromJson(Map<String, dynamic> json) => _$RoomInfoFromJson(json);

  final num? id;
  final String? name;
  final num? price;
  final String? pricePer;
  final List<String>? peculiarities;
  final List<String>? imageUrls;
}
