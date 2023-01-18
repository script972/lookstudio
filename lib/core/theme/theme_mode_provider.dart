import 'package:flutter/material.dart';
import 'package:solution_starter/core/theme/notifiable_builder.dart';

typedef ThemedChildBuilder = Widget Function(BuildContext, ThemeMode);

class ThemeModeProvider extends StatelessWidget {
  ThemeModeProvider({Key? key, required ThemeMode themeMode, required this.builder})
      : themeMode = ValueNotifier<ThemeMode>(themeMode),
        super(key: key);
  final ValueNotifier<ThemeMode> themeMode;
  final ThemedChildBuilder builder;

  static ValueNotifier<ThemeMode> of(BuildContext context) {
    return _ThemeModeProvider.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return NotifiableBuilder(
        notifier: themeMode,
        builder: (context) {
          return _ThemeModeProvider._(
            themeMode: themeMode,
            child: builder(context, themeMode.value),
          );
        });
  }
}

class _ThemeModeProvider extends InheritedWidget {
  const _ThemeModeProvider._({
    Key? key,
    required this.themeMode,
    required Widget child,
  }) : super(key: key, child: child);
  final ValueNotifier<ThemeMode> themeMode;

  @override
  bool updateShouldNotify(_ThemeModeProvider oldWidget) {
    return themeMode != oldWidget.themeMode;
  }

  static ValueNotifier<ThemeMode> of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<_ThemeModeProvider>()!.themeMode;
  }
}
