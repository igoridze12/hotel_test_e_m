import 'package:hotel_test_e_m/domain/interactors/booking/booking_interactor.dart';
import 'package:hotel_test_e_m/domain/state/hotel/Hotel_info_cubit.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildStatelessWidget> hotelProviders = [
  ProxyProvider<BookingInteractor, HotelInfoCubit>(
      update: (context, bookingInteractor, previous) => previous ?? HotelInfoCubit(bookingInteractor)),
];
