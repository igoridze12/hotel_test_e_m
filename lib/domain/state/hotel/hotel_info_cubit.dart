import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_test_e_m/domain/entities/hotel/hotel_info_entity.dart';
import 'package:hotel_test_e_m/domain/interactors/booking/booking_interactor.dart';

class HotelInfoCubit extends Cubit<HotelInfoState> {
  final BookingInteractor _bookingInteractor;

  HotelInfoCubit(this._bookingInteractor) : super(const HotelInfoInitial());

  Future<void> getHotelInfo() async {
    try {
      emit(const HotelInfoLoading());
      final hotelInfo = await _bookingInteractor.getHotelInfo();
      emit(HotelInfoLoaded(hotelInfo));
    } on Exception {
      emit(const HotelInfoError("Couldn't fetch HotelInfo. Is the device online?"));
    }
  }
}

abstract class HotelInfoState {
  const HotelInfoState();
}

class HotelInfoInitial extends HotelInfoState {
  const HotelInfoInitial();
}

class HotelInfoLoading extends HotelInfoState {
  const HotelInfoLoading();
}

class HotelInfoLoaded extends HotelInfoState {
  final HotelInfoEntity? hotelInfo;
  const HotelInfoLoaded(this.hotelInfo);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HotelInfoLoaded && other.hotelInfo == hotelInfo;
  }

  @override
  int get hashCode => hotelInfo.hashCode;
}

class HotelInfoError extends HotelInfoState {
  final String message;
  const HotelInfoError(this.message);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HotelInfoError && other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
