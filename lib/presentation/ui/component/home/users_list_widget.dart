import 'package:assessment/presentation/ui/component/home/user_item_widget.dart';
import 'package:flutter/material.dart';

import '../../../../domain/entity/user/user.dart';

class UsersListWidget extends StatelessWidget {
  const UsersListWidget({
    super.key,
    required this.users,
    required this.onTap,
  });

  final List<User> users;
  final Function(int userId) onTap;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return UserItemWidget(
          user: users[index],
          onTap: onTap,
        );
      },
      itemCount: users.length,
    );
  }
}
