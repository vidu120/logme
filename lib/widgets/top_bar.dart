import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isDarkMode;
  final bool isSignedIn = false;
  final ValueChanged<bool> onThemeToggle;
  final ValueChanged<bool> onSignInToggle;

  const TopBar({
    super.key,
    required this.isDarkMode,
    required this.onThemeToggle,
    required this.onSignInToggle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      backgroundColor: theme.appBarTheme.backgroundColor,
      elevation: 0,
      title: Text(
        'LogMe',
        style: theme.textTheme.titleLarge?.copyWith(
          color: theme.colorScheme.primary,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: IconButton(
            tooltip: isDarkMode
                ? 'Switch to Light Mode'
                : 'Switch to Dark Mode',
            icon: Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode),
            color: theme.colorScheme.primary,
            onPressed: () => onThemeToggle(!isDarkMode),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: IconButton(
            tooltip: isSignedIn ? 'Sign Out' : 'Sign In',
            icon: Icon(isSignedIn ? Icons.logout : Icons.login),
            color: theme.colorScheme.primary,
            onPressed: () => onSignInToggle(!isSignedIn),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
