import 'package:go_router/go_router.dart';
import 'package:by_example/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: LoginScreen.name,
      builder:(context, state) {
        return const LoginScreen();
      }
    ),
    GoRoute(
      path: '/cotizacion',
      name: CotizacionListScreen.name,
      builder: (context, state) {
        return const CotizacionListScreen();
      },
      routes: [
        GoRoute(
          path: ':id',
          name: CotizacionDetailScreen.name,
          builder: (context, state) {
            return const CotizacionDetailScreen();
          },
        )
      ]
    ),
  ]
);