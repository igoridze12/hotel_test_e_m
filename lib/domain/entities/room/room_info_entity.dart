import 'package:hotel_test_e_m/data/models/response/room/room_info_response.dart';

class RoomInfoEntity {
  const RoomInfoEntity({this.rooms});

  factory RoomInfoEntity.fromApiModel(RoomsInfoResponse apiModel) => RoomInfoEntity(
        rooms: apiModel.rooms?.map((e) => RoomEntity.fromApiModel(e)).toList(),
      );

  final List<RoomEntity>? rooms;
}

class RoomEntity {
  const RoomEntity({
    this.id,
    this.name,
    this.price,
    this.pricePer,
    this.peculiarities,
    this.imageUrls,
  });

  factory RoomEntity.fromApiModel(RoomInfo apiModel) => RoomEntity(
        id: apiModel.id?.toInt(),
        name: apiModel.name,
        price: apiModel.price?.toDouble(),
        pricePer: apiModel.pricePer,
        peculiarities: apiModel.peculiarities,
        imageUrls: apiModel.imageUrls,
      );

  final int? id;
  final String? name;
  final double? price;
  final String? pricePer;
  final List<String>? peculiarities;
  final List<String>? imageUrls;
}
