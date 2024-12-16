part of 'route.dart';

// This method handles dynamic route generation for the application.
Route<dynamic> onGenerateRoute(RouteSettings settings) {
  // Determine the appropriate page to navigate to based on the route name.
  switch (settings.name) {
    // Scenario 1: Root route ('/')
    case '/':
      // Handle the root navigation logic. Possible scenarios:
      // - Check if this is the user's first time using the app.
      // - If not the first time:
      //     - Check for a cached token.
      //     - If a token exists, redirect to HomePage.
      //     - Otherwise, redirect to LoginPage.
      // - If it's the first time, redirect to OnboardingPage.
      return _pageBuilder(
        (context) => FutureBuilder<bool>(
            // Attempt to retrieve the firstTimer status from CacheStore.
            future: sl<CacheStore>().checkIfFirstTimer(),
            builder: (context, firstTimerSnapshot) {
              // sl<CacheStore>().clearCache();
              // Case 1.1: FirstTimer status is still loading.
              // Show a loading spinner until the check completes.
              if (firstTimerSnapshot.connectionState ==
                  ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              }

              // Case 1.2: FirstTimer is false (not the user's first time).
              if (!firstTimerSnapshot.hasError &&
                  firstTimerSnapshot.data == false) {
                return FutureBuilder<String>(
                  // Retrieve the token from TokenStore.
                  future: sl<TokenStore>().getToken(),
                  builder: (context, tokenSnapshot) {
                    // Case 1.2.1: Token is still loading.
                    if (tokenSnapshot.connectionState ==
                        ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator.adaptive(),
                      );
                    }

                    // Case 1.2.2: Token is present and valid.
                    // Navigate to HomePage.
                    if (tokenSnapshot.hasData &&
                        tokenSnapshot.data!.isNotEmpty) {
                      return const HomePage();
                    }

                    // Case 1.2.3: Token is absent or invalid.
                    // Navigate to LoginPage.
                    return const LoginPage();
                  },
                );
              }

              // Case 1.3: FirstTimer is true (user's first time using the app).
              // Navigate to OnboardingPage.
              return const OnboardingPage();
            }),
        settings: settings,
      );

    // Scenario 2: Navigate to OnboardingPage
    case OnboardingPage.routeName:
      // Possible scenario:
      // - User explicitly navigates to the OnboardingPage (e.g., after logout or first launch).
      return _pageBuilder(
        (_) => const OnboardingPage(),
        settings: settings,
      );

    // Scenario 3: Navigate to LoginPage
    case LoginPage.routeName:
      // Possible scenario:
      // - User explicitly navigates to the LoginPage (e.g., after logout or first launch).
      return _pageBuilder(
        (_) => const LoginPage(),
        settings: settings,
      );

    // Scenario 4: Undefined route
    default:
      // Possible scenario:
      // - User attempts to navigate to a route that is not defined.
      // - Redirect them to a placeholder PageUnderConstruction page.
      return _pageBuilder(
        (_) => const PageUnderConstruction(),
        settings: settings,
      );
  }
}

// Helper function to build page routes with custom transitions.
// Used consistently across the app to provide a fade animation for all page transitions.
PageRouteBuilder<dynamic> _pageBuilder(
  Widget Function(BuildContext) page, {
  // A widget builder function to construct the target page
  required RouteSettings
      settings, // Route settings, including route name and arguments
}) {
  return PageRouteBuilder(
    settings: settings, // Attach the provided route settings to the route
    transitionsBuilder: (_, animation, __, child) => FadeTransition(
      // Apply a fade transition animation for smoother navigation.
      opacity: animation,
      child: child,
    ),
    // Define how the target page should be built.
    pageBuilder: (context, _, __) => page(context),
  );
}
