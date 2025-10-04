import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mesh/mesh.dart';

/// A generic animated mesh background that handles animation and
/// mesh construction.
class AnimatedMeshBackground extends StatefulWidget {
  const AnimatedMeshBackground({required this.colorsBuilder, super.key});

  /// The builder callback that returns the list of colors for the mesh,
  /// based on the current animation value (dt).
  final List<Color?> Function(double dt) colorsBuilder;

  @override
  State<AnimatedMeshBackground> createState() => _AnimatedMeshBackgroundState();
}

class _AnimatedMeshBackgroundState extends State<AnimatedMeshBackground>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 8))
        ..forward()
        ..addListener(() {
          // Reverse the animation when reaching the bounds.
          if (_controller.value == 1.0) {
            unawaited(_controller.animateTo(0, curve: Easing.standard));
          } else if (_controller.value == 0.0) {
            unawaited(_controller.animateTo(1, curve: Easing.standard));
          }
        });

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        final dt = _controller.value;
        const scale = 1.1;
        final vertices = [
          (0.0 * scale, 0.3 * scale).v.to((0.0 * scale, 0.0 * scale).v, dt),
          (
            0.5 * scale,
            0.15 * scale,
          ).v.to((0.5 * scale, 0.1 * scale).v, dt * dt),
          (
            1.0 * scale,
            -0.1 * scale,
          ).v.to((1.0 * scale, 0.3 * scale).v, dt * dt),
          (-0.05 * scale, 0.68 * scale).v.to((0.0 * scale, 0.45 * scale).v, dt),
          (0.63 * scale, 0.3 * scale).v.to((0.48 * scale, 0.54 * scale).v, dt),
          (1.0 * scale, 0.1 * scale).v.to((1.0 * scale, 0.6 * scale).v, dt),
          (-0.2 * scale, 0.92 * scale).v.to((0.0 * scale, 0.58 * scale).v, dt),
          (
            0.32 * scale,
            0.72 * scale,
          ).v.to((0.58 * scale, 0.69 * scale).v, dt * dt),
          (1.0 * scale, 0.3 * scale).v.to((1.0 * scale, 0.8 * scale).v, dt),
          (0.0 * scale, 1.2 * scale).v.to((0.0 * scale, 0.86 * scale).v, dt),
          (0.5 * scale, 0.88 * scale).v.to((0.5 * scale, 0.95 * scale).v, dt),
          (1.0 * scale, 0.82 * scale).v.to((1.0 * scale, 1.0 * scale).v, dt),
        ];

        final colors = widget.colorsBuilder(dt);

        return SizedBox(
          child: OMeshGradient(
            tessellation: 14,
            size: Size.infinite,
            mesh: OMeshRect(
              width: 3,
              height: 4,
              colorSpace: OMeshColorSpace.lab,
              fallbackColor: Theme.of(context).colorScheme.surface,
              vertices: vertices,
              colors: colors,
            ),
          ),
        );
      },
    );
  }
}

/// A dark variant of the background.
class DarkBackground extends StatelessWidget {
  const DarkBackground({super.key});

  /// Returns the colors for the dark background based on [dt].
  List<Color?> _buildDarkColors(double dt) {
    return [
      null,
      null,
      null,
      const Color(
        0xFF7B1FA2,
      ).withValues(alpha: 0.9).to(const Color(0xFF7B1FA2), dt),
      const Color(
        0xFF1976D2,
      ).withValues(alpha: 0.9).to(const Color(0xFF1976D2), dt),
      const Color(
        0xFFD32F2F,
      ).withValues(alpha: 0.9).to(const Color(0xFFD32F2F), dt),
      const Color(
        0xFF7B1FA2,
      ).withValues(alpha: 0.9).to(const Color(0xFF7B1FA2), dt),
      const Color(
        0xFF1976D2,
      ).withValues(alpha: 0.9).to(const Color(0xFF1976D2), dt),
      const Color(
        0xFFD32F2F,
      ).withValues(alpha: 0.9).to(const Color(0xFFD32F2F), dt),
      null,
      null,
      null,
    ];
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedMeshBackground(colorsBuilder: _buildDarkColors);
  }
}

/// A light variant of the background.
class LightBackground extends StatelessWidget {
  const LightBackground({super.key});

  /// Returns the colors for the light background based on [dt].
  List<Color?> _buildLightColors(double dt) {
    return [
      null,
      null,
      null,
      const Color(
        0xFFFF7043,
      ).withValues(alpha: 1).to(const Color(0xFFFF8A65), dt),
      const Color(
        0xFFFFCA28,
      ).withValues(alpha: 1).to(const Color(0xFFFFD54F), dt),
      const Color(
        0xFFFF4081,
      ).withValues(alpha: 1).to(const Color(0xFFF06292), dt),
      const Color(
        0xFFFF7043,
      ).withValues(alpha: 1).to(const Color(0xFFFF8A65), dt),
      const Color(
        0xFFFFCA28,
      ).withValues(alpha: 1).to(const Color(0xFFFFD54F), dt),
      const Color(
        0xFFFF4081,
      ).withValues(alpha: 1).to(const Color(0xFFF06292), dt),
      null,
      null,
      null,
    ];
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedMeshBackground(colorsBuilder: _buildLightColors);
  }
}

extension on OVertex {
  OVertex to(OVertex b, double t) => lerpTo(b, t);
}

extension on Color? {
  Color? to(Color? b, double t) => Color.lerp(this, b, t);
}
