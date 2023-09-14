import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../domain/entity/error_entity.dart';

enum MessageType { success, error, info, warning }

extension ShowSnackbar on BuildContext {
  void showErrorMessage({required ErrorEntity? errorObject}) {
    var textTheme = Theme.of(this).textTheme;
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      var snackBar = SnackBar(
        content: Text(
          "${errorObject?.description ?? "Something went wrong."}\n${errorObject?.solution ?? "Please try again."}",
          style: textTheme.bodyMedium,
        ),
        showCloseIcon: true,
        duration: const Duration(seconds: 4),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.redAccent,
      );

      ScaffoldMessenger.of(this).showSnackBar(snackBar);
    });
  }
}
