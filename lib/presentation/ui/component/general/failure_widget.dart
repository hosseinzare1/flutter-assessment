import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../domain/entity/general/error_entity.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget({
    super.key,
    required this.error,
    required this.onRetryPressed,
  });

  final ErrorEntity? error;
  final Function() onRetryPressed;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset(
              "assets/animation/failure.json",
              width: 200,
              height: 200,
              repeat: false,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                error?.title ?? "Failure",
                style: textTheme.titleLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                error?.description ?? "Something went wrong.",
                style: textTheme.bodyMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                error?.solution ?? "Please try again in a few minutes.",
                style: textTheme.bodyMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32, bottom: 32),
              child: ElevatedButton(
                onPressed: onRetryPressed,
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 48),
                ),
                child: const Text("Retry"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
