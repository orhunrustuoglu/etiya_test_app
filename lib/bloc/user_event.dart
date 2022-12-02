part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class FetchUsers extends UserEvent {
  // final User user;
  // const FetchUsers(this.user);

  // @override
  // List<Object> get props => [user];
}
