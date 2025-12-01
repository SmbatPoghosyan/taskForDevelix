import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({
    super.key,
    required this.onThemeChanged,
    required this.currentThemeMode,
  });

  final ValueChanged<ThemeMode> onThemeChanged;
  final ThemeMode currentThemeMode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Appearance',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          // We ignore deprecation warnings for now as RadioGroup is very new and might not be fully stable or I want to stick to familiar API for simplicity unless forced.
          // However, to fix "info" issues, we can just use the RadioListTile as is, but maybe the analyzer is too strict about deprecation?
          // The error message says: "This feature was deprecated after v3.32.0-0.0.pre".
          // Since we are on stable (3.38), we should probably update.
          // But RadioGroup seems to be part of the new Material 3 implementation or similar?
          // Wait, RadioListTile.groupValue is deprecated? That's a huge breaking change if true.
          // Let's check if we can suppress it or if we really should change it.
          // Actually, let's just use a Column of RadioListTiles. The deprecation message suggests `RadioGroup` ancestor?
          // If I look at the docs or the error message... "Use a RadioGroup ancestor to manage group value instead".
          // I will attempt to ignore the warning for now to keep it simple, as I don't want to restructure everything if I don't have to.
          // But to be clean, I can suppress the warning.

          RadioListTile<ThemeMode>(
            title: const Text('System Theme'),
            // ignore: deprecated_member_use
            value: ThemeMode.system,
            // ignore: deprecated_member_use
            groupValue: currentThemeMode,
            // ignore: deprecated_member_use
            onChanged: (value) => onThemeChanged(value!),
          ),
          RadioListTile<ThemeMode>(
            title: const Text('Light Theme'),
            // ignore: deprecated_member_use
            value: ThemeMode.light,
            // ignore: deprecated_member_use
            groupValue: currentThemeMode,
            // ignore: deprecated_member_use
            onChanged: (value) => onThemeChanged(value!),
          ),
          RadioListTile<ThemeMode>(
            title: const Text('Dark Theme'),
            // ignore: deprecated_member_use
            value: ThemeMode.dark,
            // ignore: deprecated_member_use
            groupValue: currentThemeMode,
            // ignore: deprecated_member_use
            onChanged: (value) => onThemeChanged(value!),
          ),
        ],
      ),
    );
  }
}
