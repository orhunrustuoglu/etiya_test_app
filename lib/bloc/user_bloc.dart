import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:etiya_test_app/models/address.dart';
import 'package:etiya_test_app/models/company.dart';

import '../models/geo.dart';
import '../models/user.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    List<User> users = [];
    on<FetchUsers>((event, emit) async {
      await Future.delayed(Duration.zero, () async {
        try {
          await Dio()
              .get("https://jsonplaceholder.typicode.com/users")
              .then((response) {
            (response.data as List).forEach((u) {
              users.add(User(
                  id: u["id"],
                  name: u["name"],
                  userName: u["username"],
                  email: u["email"],
                  website: u["website"],
                  phone: u["phone"],
                  address: Address(
                    street: u["address"]["street"],
                    suite: u["address"]["suite"],
                    city: u["address"]["city"],
                    zipcode: u["address"]["zipcode"],
                    geo: Geo(
                      lat: u["address"]["geo"]["lat"],
                      lng: u["address"]["geo"]["lng"],
                    ),
                  ),
                  company: Company(
                    name: u["company"]["name"],
                    bs: u["company"]["bs"],
                    catchPhrase: u["company"]["catchPhrase"],
                  )));
            });
            emit(UserLoaded(users: users));
          });
        } catch (e) {}
      });
    });
  }
}
