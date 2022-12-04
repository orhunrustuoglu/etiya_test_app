import 'package:etiya_test_app/bloc/user_bloc.dart';
import 'package:etiya_test_app/ui/widgets/list_search_bar_widget.dart';
import 'package:etiya_test_app/ui/widgets/user_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/user.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String _query = "";
  @override
  Widget build(BuildContext context) {
    //TODO add splash screen with the initState comment "Might handle requests here later on..."
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: SafeArea(
            child: Column(
          children: [
            ListSearchBarWidget(
              onChanged: (query) {
                setState(() {
                  _query = query;
                });
              },
            ),
            Expanded(
              // keep expanded here so that screen does not overflow
              child:
                  BlocBuilder<UserBloc, UserState>(builder: (context, state) {
                if (state is UserInitial) {
                  return const Center(
                      child: CircularProgressIndicator.adaptive(
                    key: Key("circularProgressIndicator"),
                  ));
                }
                if (state is UserLoaded) {
                  List<User> filteredList = state.users
                      .where((u) => u.userName
                          .toLowerCase()
                          .contains(_query.toLowerCase()))
                      .toList();
                  return ListView.builder(
                      itemCount: filteredList.length,
                      itemBuilder: ((context, index) {
                        return UserCardWidget(
                            key: Key(index.toString()),
                            user: filteredList[index]);
                      }));
                } else {
                  return const Center(
                    child: Text("Something went wrong..."),
                  );
                }
              }),
            )
          ],
        )),
      ),
    );
  }
}
