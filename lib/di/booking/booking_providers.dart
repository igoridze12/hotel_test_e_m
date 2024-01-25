import 'package:hotel_test_e_m/domain/interactors/booking/booking_interactor.dart';
import 'package:hotel_test_e_m/domain/state/booking/booking_info_cubit.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildStatelessWidget> bookingProviders = [
  ProxyProvider<BookingInteractor, BookingInfoCubit>(
      update: (context, bookingInteractor, previous) => previous ?? BookingInfoCubit(bookingInteractor)),
];
