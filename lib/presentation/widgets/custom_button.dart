// lib/presentation/widgets/custom_buttons.dart

import 'package:flutter/material.dart';

/// A collection of reusable custom buttons for the app.
class CustomButtons {
  /// A primary button with a bold design.
  static Widget primary({
    required String text,
    required VoidCallback onPressed,
    Color color = Colors.blue,
    Color textColor = Colors.white,
    double fontSize = 16,
    double padding = 12,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.symmetric(horizontal: padding * 2, vertical: padding),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
      ),
      child: Text(text, style: TextStyle(color: textColor)),
    );
  }

  /// A secondary button with an outlined design.
  static Widget secondary({
    required String text,
    required VoidCallback onPressed,
    Color borderColor = Colors.blue,
    Color textColor = Colors.blue,
    double fontSize = 16,
    double padding = 12,
  }) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: borderColor, width: 2),
        padding: EdgeInsets.symmetric(horizontal: padding * 2, vertical: padding),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
      ),
      child: Text(text, style: TextStyle(color: textColor)),
    );
  }

  /// A floating action button (FAB) for quick actions.
  static Widget floating({
    required IconData icon,
    required VoidCallback onPressed,
    Color backgroundColor = Colors.blue,
    Color iconColor = Colors.white,
    double size = 56,
  }) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      shape: const CircleBorder(),
      child: Icon(icon, color: iconColor, size: 24),
    );
  }

  /// A text button with minimal styling.
  static Widget textButton({
    required String text,
    required VoidCallback onPressed,
    Color textColor = Colors.blue,
    double fontSize = 16,
  }) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: textColor,
        textStyle: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
      ),
      child: Text(text),
    );
  }

  /// A disabled button (useful for loading states).
  static Widget disabled({
    required String text,
    double fontSize = 16,
    double padding = 12,
  }) {
    return ElevatedButton(
      onPressed: null,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey,
        padding: EdgeInsets.symmetric(horizontal: padding * 2, vertical: padding),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
      ),
      child: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }
}
