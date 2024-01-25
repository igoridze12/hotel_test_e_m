import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_test_e_m/domain/entities/room/room_info_entity.dart';
import 'package:hotel_test_e_m/domain/interactors/booking/booking_interactor.dart';

part 'room_info_state.dart';

class RoomInfoCubit extends Cubit<RoomInfoState> {
  final BookingInteractor _bookingInteractor;

  RoomInfoCubit(this._bookingInteractor) : super(const RoomInfoInitial());

  Future<void> getRoomInfo() async {
    try {
      emit(const RoomInfoLoading());
      final roomInfo = await _bookingInteractor.getRoomInfo();
      emit(RoomInfoLoaded(roomInfo));
    } on Exception {
      emit(const RoomInfoError("Couldn't fetch RoomInfo. Is the device online?"));
    }
  }
}
