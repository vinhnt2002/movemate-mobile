import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../features/home/presentation/home_screen.dart';
import '../../features/profile/presentation/profile_screen.dart';
import '../../features/order/presentation/order_screen.dart';
import '../../tab_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends _$AppRouter {
  final Ref _ref;
  AppRouter({
    required Ref ref,
  }) : _ref = ref;

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeScreenRoute.page,
        ),
        AutoRoute(
          page: OrderScreenRoute.page,
        ),

// onboarding   => 1 chạy lần khi vào  => lưu nó 1 cái context => true/false => true 
// if(...=true)

        AutoRoute(
          page: TabViewScreenRoute.page,
          initial: true,
          // guards: [AuthGuard(ref: _ref)],
          children: [
            AutoRoute(page: HomeScreenRoute.page),
            AutoRoute(page: ProfileScreenRoute.page),
            AutoRoute(page: OrderScreenRoute.page),
          ],
        ),
      ];
}

final appRouterProvider = Provider((ref) => AppRouter(ref: ref));
