import 'package:hotel_test_e_m/domain/interactors/booking/booking_interactor.dart';
import 'package:hotel_test_e_m/domain/state/room/room_info_cubit.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildStatelessWidget> roomProviders = [
  ProxyProvider<BookingInteractor, RoomInfoCubit>(
      update: (context, bookingInteractor, previous) => previous ?? RoomInfoCubit(bookingInteractor)),
];
