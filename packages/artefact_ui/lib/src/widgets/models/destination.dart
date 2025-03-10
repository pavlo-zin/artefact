import 'package:flutter/material.dart';

/// A model representing a destination in the app.
class Destination {
  const Destination(this.widget, this.label);

  /// The widget to display for this destination.
  final Widget widget;

  /// The label to display for this destination.
  final String label;
}
