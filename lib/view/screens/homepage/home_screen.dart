import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:music_lister/utils/constants/app_assets.dart';
import 'package:music_lister/utils/constants/colors/app_colors.dart';
import 'package:music_lister/utils/constants/typography_constants.dart';
import 'package:music_lister/view/screens/homepage/widgets/playlist_item_tile.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        context.go('/addplaylist');
      }
      ,backgroundColor: AppColors.primaryColor,
      child:const Icon(Icons.add,color: Colors.white,),
      ),
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const Text("Music Lister"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: AppColors.primaryColor,
              child: Image.asset(
                AppAssets.profilePicture,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 10),
                Text("Welcome to Music Lister",
                    textAlign: TextAlign.left, style: AppTypography.f20w700),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return PlaylistItemTile(
                        onTap: () {
                          context.go('/playlistdetail');
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
