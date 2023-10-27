import 'package:flutter/material.dart';
import 'package:music_lister/utils/widgets/customtextfield.dart';
import 'package:music_lister/view/screens/AddPlaylistScreen/widgets/addnewsong.dart';

class AddPlaylist extends StatefulWidget {
  const AddPlaylist({super.key});

  @override
  State<AddPlaylist> createState() => _AddPlaylistState();
}

class _AddPlaylistState extends State<AddPlaylist> {
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
                onPressed: (){}, child: const SizedBox(
                width: double.infinity,
                height: 56,
      
                child: Center(child:  Text("Create Playlist")))),
      ),

      //TODO:Add Colors and TypoGraphy
      appBar: AppBar(title: const Text("Music Lister"),),
      body:  Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Playlist Name"),
              const SizedBox(height: 16,),
              const CustomTextField(label: "Playlist Name",),
              const SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Songs"),
                  TextButton(onPressed:(){
                    
                    setState(() {
                      newSongWidgetVisible=true;
                      
                    });
                  }, child: const Text("+ Add New Song"))
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