import 'package:artefact/theme_toggle/theme_toggle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeToggleButton extends StatelessWidget {
  const ThemeToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    final themeMode = context.watch<ThemeToggleCubit>().state;
    final isLightTheme = themeMode == ThemeMode.light;

    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 130, bottom: 20),
        child: IconButton.outlined(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          onPressed: () => context.read<ThemeToggleCubit>().toggle(),
          icon: ClipOval(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: AnimatedSwitcher(
                duration: Durations.medium1,
                switchInCurve: Curves.easeOutSine,
                switchOutCurve: Curves.easeInSine,
                transitionBuilder: (child, animation) {
                  final beginOffset =
                      child.key == const Key('dark')
                          ? const Offset(0, -1)
                          : const Offset(0, 1);

                  final offsetAnimation = Tween<Offset>(
                    begin: beginOffset,
                    end: Offset.zero,
                  ).animate(animation);

                  return SlideTransition(
                    position: offsetAnimation,
                    child: child,
                  );
                },
                child:
                    isLightTheme
                        ? const Icon(Icons.dark_mode_outlined, key: Key('dark'))
                        : const Icon(
                          Icons.light_mode_outlined,
                          key: Key('light'),
                        ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
