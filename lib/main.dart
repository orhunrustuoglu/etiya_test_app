import 'package:etiya_test_app/bloc/user_bloc.dart';
import 'package:etiya_test_app/router.gr.dart';
import 'package:etiya_test_app/ui/screens/main_screen.dart';
import 'package:etiya_test_app/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserBloc()..add(FetchUsers()),
        )
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        theme: Theme.of(context).copyWith(
            colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: const Color(0xff242441), //etiya blue
                secondary: const Color(0xfff58220) //etiya orange
                )),
      ),
    );
  }
}
