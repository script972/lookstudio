import 'package:flutter/material.dart';
import 'package:solution_starter/core/app_update/app_update_aware_cubit.dart';
import 'package:solution_starter/core/app_update/app_update_aware_state.dart';

class AppUpdateAware extends StatelessWidget {
  const AppUpdateAware({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppUpdateAwareCubit, AppUpdateAwareState>(
      builder: (context, state) {
        _showNotification(context, state);

        return child;
      },
    );
  }

  Future<void> _showNotification(
    BuildContext context,
    AppUpdateAwareState state,
  ) =>
      Future.delayed(
        const Duration(milliseconds: 500),
        () => state.whenOrNull(
          softUpdateAvailable: () async {
            // Notify Cubit so notification wouldn't be showed again
            BlocProvider.of<AppUpdateAwareCubit>(context).confirmUserNotified();

            // Show dialog
            showSoftUpdateDialog(
              context: context,
            );

            return;
          },
        ),
      );
}
