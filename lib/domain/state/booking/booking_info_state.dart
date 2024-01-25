part of 'booking_info_cubit.dart';

abstract class BookingInfoState {
  const BookingInfoState();
}

class BookingInfoInitial extends BookingInfoState {
  const BookingInfoInitial();
}

class BookingInfoLoading extends BookingInfoState {
  const BookingInfoLoading();
}

class BookingInfoLoaded extends BookingInfoState {
  final BookingInfoEntity? bookingInfo;
  const BookingInfoLoaded(this.bookingInfo);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BookingInfoLoaded && other.bookingInfo == bookingInfo;
  }

  @override
  int get hashCode => bookingInfo.hashCode;
}

class BookingInfoError extends BookingInfoState {
  final String message;
  const BookingInfoError(this.message);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BookingInfoError && other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
