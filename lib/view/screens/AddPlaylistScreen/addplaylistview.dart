import 'package:flutter/material.dart';
import 'package:music_lister/utils/constants/app_assets.dart';
import 'package:music_lister/utils/constants/colors/app_colors.dart';
import 'package:music_lister/utils/widgets/customtextfield.dart';
import 'package:music_lister/view/screens/AddPlaylistScreen/widgets/addnewsong.dart';
import 'package:music_lister/utils/constants/typography_constants.dart';

class AddPlaylist extends StatefulWidget {
  const AddPlaylist({super.key});

  @override
  State<AddPlaylist> createState() => _AddPlaylistState();
}

class _AddPlaylistState extends State<AddPlaylist> {

  final TextEditingController playlistName =TextEditingController();
  //TODO:DELETE this list and initialize a list songs with the actually songs in it
  List<String> songs= [""];
  bool newSongWidgetVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: songs.isEmpty? const SizedBox.shrink():Padding(
        padding: const EdgeInsets.symmetric(horizontal:16.0),
        child: ElevatedButton(
                // TODO:Add Primary Button Style here
                onPressed: (){


                }, child: const SizedBox(
                width: double.infinity,
                height: 56,
      
                child: Center(child:  Text("Create Playlist")))),
      ),

      //TODO:Add Colors and TypoGraphy
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
      body:  Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text("Playlist Name",style: AppTypography.f20w700,),
              const SizedBox(height: 16,),
               CustomTextField(
                controller: playlistName,
                label: "Playlist Name",),
              const SizedBox(height: 16,),
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
              SizedBox(child:newSongWidgetVisible? const AddNewSong():const SizedBox.shrink()
        )
        
              
              ],
          ),
        ),
      ),
    );
  }
}