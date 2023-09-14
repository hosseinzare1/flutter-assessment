import 'package:assessment/presentation/state_management/users/users_cubit.dart';
import 'package:assessment/presentation/ui/component/general/loading_widget.dart';
import 'package:assessment/presentation/ui/component/home/users_list_widget.dart';
import 'package:assessment/presentation/ui/screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../component/general/failure_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return UsersCubit();
      },
      child: Scaffold(
        appBar: AppBar(title: const Text("Home")),
        body: const HomeBody(),
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
              users: state.users ?? [],
              onTap: (userId) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ProfileScreen(userId: userId);
                }));
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
