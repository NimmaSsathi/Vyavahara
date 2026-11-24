import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'features/daily/ui/home_placeholder.dart';

part 'router.g.dart';

/// App routes (SRS section 8). Only '/' (SCR-08, placeholder) exists for now.
@Riverpod(keepAlive: true)
GoRouter router(Ref ref) {
  return GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePlaceholder(),
      ),
    ],
  );
}