part of 'room_info_cubit.dart';

abstract class RoomInfoState {
  const RoomInfoState();
}

class RoomInfoInitial extends RoomInfoState {
  const RoomInfoInitial();
}

class RoomInfoLoading extends RoomInfoState {
  const RoomInfoLoading();
}

class RoomInfoLoaded extends RoomInfoState {
  final RoomInfoEntity? roomInfo;
  const RoomInfoLoaded(this.roomInfo);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RoomInfoLoaded && other.roomInfo == roomInfo;
  }

  @override
  int get hashCode => roomInfo.hashCode;
}

class RoomInfoError extends RoomInfoState {
  final String message;
  const RoomInfoError(this.message);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RoomInfoError && other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
