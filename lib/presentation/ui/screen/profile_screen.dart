import 'package:assessment/presentation/state_management/posts/posts_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../util/dependency_injection.dart';
import '../component/profile/posts_tab_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, required this.userId});

  final int userId;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            DependencyInjection.initPostsDependencies();
            return PostsCubit(userId);
          },
        ),
      ],
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Profile"),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: "Posts",
                  icon: Icon(Icons.content_paste_sharp),
                ),
                Tab(
                  text: "Albums",
                  icon: Icon(Icons.photo),
                )
              ],
            ),
          ),
          body: const ProfileBody(),
        ),
      ),
    );
  }
}

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        PostsTabWidget(),
        Icon(Icons.photo),
      ],
    );
  }
}
