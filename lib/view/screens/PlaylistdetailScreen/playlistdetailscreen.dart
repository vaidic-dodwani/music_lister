import 'package:flutter/material.dart';
import 'package:music_lister/utils/constants/app_assets.dart';
import 'package:music_lister/utils/constants/colors/app_colors.dart';
import 'package:music_lister/utils/constants/typography_constants.dart';
import 'package:music_lister/view/screens/AddPlaylistScreen/widgets/addnewsong.dart';
import 'package:music_lister/view/screens/PlaylistdetailScreen/widgets/songstile.dart';
import 'package:music_lister/view/screens/homepage/widgets/playlist_item_tile.dart';

class PlaylistDetailView extends StatefulWidget {
  const PlaylistDetailView({super.key});

  @override
  State<PlaylistDetailView> createState() => _PlaylistDetailViewState();
}

class _PlaylistDetailViewState extends State<PlaylistDetailView> {
  bool newSongWidgetVisible = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height - kToolbarHeight,
          // width: double.infinity,
          child: SingleChildScrollView(
        
            child: SizedBox(
              height: MediaQuery.of(context).size.height - kToolbarHeight,
          // width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Playlist Detail",style: AppTypography.f20w700,),
                const SizedBox(height: 16,),
                const PlaylistItemTile(delete: true,),
                SizedBox(height: 16,),
                Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Text("Songs",style: AppTypography.f20w700,),
                        TextButton(onPressed:(){
                          
                          setState(() {
                            newSongWidgetVisible=true;
                            
                          });
                        }, child: const Text("+ Add New Song",style: TextStyle(color: AppColors.primaryColor),))
                      ],
                    ),
                    const SizedBox(height: 16,),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: ((context, index) => SongTile())),
                    ),
                    SizedBox(child:newSongWidgetVisible? const AddNewSong():const SizedBox.shrink()
                    )
              
              ]),
            ),
          ),
        ),
      ),
    );
  }
}