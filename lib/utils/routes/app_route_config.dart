import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:music_lister/view/screens/AddPlaylistScreen/addplaylistview.dart';
import 'package:music_lister/view/screens/PlaylistScreen/playlistscreen.dart';

import 'app_route_names.dart';

class GoRouterConfig {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: AppRouteNames.splashScreenRoute,
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(child: PlaylistScreen());
        },
      ),
    ],
  );
}
