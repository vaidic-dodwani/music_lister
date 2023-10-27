import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:music_lister/view/screens/AddPlaylistScreen/addplaylistview.dart';
import 'package:music_lister/view/screens/PlaylistdetailScreen/playlistdetailscreen.dart';
import 'package:music_lister/view/screens/homepage/home_screen.dart';
// import 'package:music_lister/view/screens/PlaylistScreen/playlistscreen.dart';

import 'app_route_names.dart';

class GoRouterConfig {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: AppRouteNames.splashScreenRoute,
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(child: SplashScreen());
        },
        routes: [ GoRoute(
        name: AppRouteNames.addnewplaylist,
        path: 'addplaylist',
        pageBuilder: (context, state) {
          return const MaterialPage(child: AddPlaylist());
        },
        
      ),
      GoRoute(
        name: AppRouteNames.playlistdetail,
        path: 'playlistdetail',
        pageBuilder: (context, state) {
          return const MaterialPage(child: PlaylistDetailView());
        },
        
      ),]
      ),
    ],
  );
}
