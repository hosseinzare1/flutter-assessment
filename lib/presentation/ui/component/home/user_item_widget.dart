import 'package:flutter/material.dart';

import '../../../../domain/entity/user/user.dart';

class UserItemWidget extends StatelessWidget {
  const UserItemWidget({
    super.key,
    required this.user,
    required this.onTap,
  });

  final User user;
  final Function(int userId) onTap;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            offset: const Offset(0, 1),
            blurRadius: 2,
          ),
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          onTap: () => onTap(user.id),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  style: textTheme.titleLarge,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    user.email,
                    style: textTheme.bodyMedium,
                  ),
                ),
                Text(
                  user.phone,
                  style: textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
