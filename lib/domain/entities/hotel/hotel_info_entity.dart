import 'package:hotel_test_e_m/data/models/response/hotel/hotel_info_response.dart';

class HotelInfoEntity {
  const HotelInfoEntity({
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

  factory HotelInfoEntity.fromApiModel(HotelInfoResponse apiModel) => HotelInfoEntity(
        id: apiModel.id?.toInt(),
        name: apiModel.name,
        address: apiModel.address,
        minimalPrice: apiModel.minimalPrice?.toDouble(),
        priceForIt: apiModel.priceForIt,
        rating: apiModel.rating?.toDouble(),
        ratingName: apiModel.ratingName,
        imageUrls: apiModel.imageUrls,
        aboutTheHotel: apiModel.aboutTheHotel == null ? null : AboutTheHotelEntity.fromApiModel(apiModel.aboutTheHotel!),
      );

  final int? id;
  final String? name;
  final String? address;
  final double? minimalPrice;
  final String? priceForIt;
  final double? rating;
  final String? ratingName;
  final List<String?>? imageUrls;
  final AboutTheHotelEntity? aboutTheHotel;
}

class AboutTheHotelEntity {
  const AboutTheHotelEntity({
    this.description,
    this.peculiarities,
  });

  factory AboutTheHotelEntity.fromApiModel(AboutTheHotelModel apiModel) => AboutTheHotelEntity(
        description: apiModel.description,
        peculiarities: apiModel.peculiarities,
      );

  final String? description;
  final List<String?>? peculiarities;
}
