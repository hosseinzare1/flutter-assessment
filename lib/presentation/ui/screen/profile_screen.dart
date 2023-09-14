import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, required this.userId});

  final int userId;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
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
    );
  }
}

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        Icon(Icons.content_paste_sharp),
        Icon(Icons.photo),
      ],
    );
  }
}
