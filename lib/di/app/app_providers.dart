import 'package:hotel_test_e_m/data/api/booking_api/booking_api.dart';
import 'package:hotel_test_e_m/data/api/core/core_dio_factory.dart';
import 'package:hotel_test_e_m/data/repositories/booking/booking_repository.dart';
import 'package:hotel_test_e_m/domain/interactors/booking/booking_interactor.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildStatelessWidget> appProviders = [
  Provider<CoreDioFactory>.value(value: DefaultCoreDioFactory()),
  ProxyProvider<CoreDioFactory, BookingApi>(update: (context, dioFactory, previous) => previous ?? BookingApi(dioFactory)),
  ProxyProvider<BookingApi, IBookingRepository>(
      update: (context, bookingApi, previous) => previous ?? BookingRepositoryNetwork(bookingApi)),
  ProxyProvider<IBookingRepository, BookingInteractor>(
      update: (context, bookingRepository, previous) => previous ?? BookingInteractor(bookingRepository)),
];
