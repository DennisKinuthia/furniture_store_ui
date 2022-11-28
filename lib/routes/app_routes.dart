import 'package:furniture_store/models/product.dart';
import 'package:furniture_store/screens/details/details_screen.dart';
import 'package:furniture_store/screens/home/home.dart';
import 'package:go_router/go_router.dart';

enum AppRoutes {
  home,
  details,
}

final goRouter = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoutes.home.name,
      builder: (context, state) => const Home(),
    ),
    GoRoute(
      path: '/details',
      name: AppRoutes.details.name,
      builder: (context, state) {
        final product = state.extra as Product;
        return DetailsScreen(product: product);
      },
    ),
  ],
);
