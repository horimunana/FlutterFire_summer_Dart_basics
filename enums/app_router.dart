enum AppRouter { home, profile, settings, notifications }

void navigate(AppRouter router) {
  final title = switch (router) {
    AppRouter.home => 'Home',
    AppRouter.profile => 'My Profile',
    AppRouter.settings => 'Settings',
    AppRouter.notifications => 'Notifications',
  };

  print('Navigating to: $title');
  print('Route name: ${router.name}'); // "home", "profile", etc.
}

void main() {
  navigate(AppRouter.home);
}
