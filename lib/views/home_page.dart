import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.emoji_emotions,
              size: 72,
              color: theme.colorScheme.primary,
            ),
            const SizedBox(height: 32),
            Text(
              'Welcome to Logme',
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.primary,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              '''
      Logme helps you securely store and manage your activity logs online, eliminating the need for offline records.

      Easily track your work, review your progress, and receive feedback from administrators—all in one place.

      Designed for students, professionals, and anyone who values organization, Logme empowers you to stay productive and accountable every day.
              ''',
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurface.withAlpha(
                  (0.8 * 255).toInt(),
                ),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
