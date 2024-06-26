import 'package:assessment/presentation/state_management/users/users_cubit.dart';
import 'package:assessment/presentation/ui/component/general/loading_widget.dart';
import 'package:assessment/presentation/ui/component/home/users_list_widget.dart';
import 'package:assessment/presentation/ui/screen/profile_screen.dart';
import 'package:assessment/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../component/general/failure_widget.dart';

class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return UsersCubit();
      },
      child: WillPopScope(
        onWillPop: () => onWillPop(context),
        child: Scaffold(
          appBar: AppBar(title: const Text("Home page")),
          body: const HomeBody(),
        ),
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersCubit, UsersState>(
      builder: (BuildContext context, UsersState state) {
        switch (state.usersStatus) {
          case UsersStatus.initial:
            context.read<UsersCubit>().usersRequested();
            return const LoadingWidget();
          case UsersStatus.loading:
            return const LoadingWidget();
          case UsersStatus.success:
            return UsersListWidget(
              users: state.users,
              onTap: (userId) {
                context.push(
                  profileScreenPath,
                  extra: ProfileScreenExtras(userId),
                );
              },
            );
          case UsersStatus.failure:
            return FailureWidget(
              error: state.error,
              onRetryPressed: () => context.read<UsersCubit>().usersRequested(),
            );
        }
      },
    );
  }
}

DateTime? currentBackPressTime;

Future<bool> onWillPop(BuildContext context) {
  DateTime now = DateTime.now();
  if (currentBackPressTime == null ||
      now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
    currentBackPressTime = now;
    var snackBar = const SnackBar(
      content: Text(
        "Press back again to exit",
      ),
      duration: Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.orange,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    return Future.value(false);
  } else {
    return Future.value(true);
  }
}
