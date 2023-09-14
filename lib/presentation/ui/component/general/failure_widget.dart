import 'package:assessment/domain/model/error_entity.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
            Lottie.asset("assets/animation/failure.json",
                width: 200, height: 200, repeat: false),
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
                error?.description ?? "Something went wrong",
                style: textTheme.bodyMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: ElevatedButton(
                onPressed: onRetryPressed,
                child: const Text("Retry"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
