import 'package:flutter/material.dart';
import 'package:music_lister/utils/constants/colors/app_colors.dart';
import 'package:music_lister/utils/constants/typography_constants.dart';
import 'package:music_lister/utils/real_size_function.dart';

class SongTile extends StatelessWidget {
  const SongTile({super.key, this.onTap,this.delete= false});
  final void Function()? onTap;
  final bool delete;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: RelSize.height(context, 50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            children: [
              const SizedBox(width: 10),
              const Icon(
                Icons.album,
                size: 75,
                color: AppColors.primaryColor,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Song Name",
                      style: AppTypography.f24w700under,
                    ),
                    Text(
                      "Artist Name",
                      style: AppTypography.f24w700under,
                    )
                  ],
                ),
              ),
               Icon(
                delete?Icons.delete_outline_rounded:Icons.navigate_next,
                size: 50,
                color: delete?Colors.red:AppColors.primaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
