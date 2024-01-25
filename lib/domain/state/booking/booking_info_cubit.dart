import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_test_e_m/domain/entities/booking/booking_info_entity.dart';
import 'package:hotel_test_e_m/domain/interactors/booking/booking_interactor.dart';

part 'booking_info_state.dart';

class BookingInfoCubit extends Cubit<BookingInfoState> {
  final BookingInteractor _bookingInteractor;

  BookingInfoCubit(this._bookingInteractor) : super(const BookingInfoInitial());

  Future<void> getBookingInfo() async {
    try {
      emit(const BookingInfoLoading());
      final bookingInfo = await _bookingInteractor.getBookingInfo();
      emit(BookingInfoLoaded(bookingInfo));
    } on Exception {
      emit(const BookingInfoError("Couldn't fetch BookingInfo. Is the device online?"));
    }
  }
}
