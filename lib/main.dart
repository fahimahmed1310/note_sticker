import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_sticker/helper/initdependency.dart';
import 'package:note_sticker/pages/splash_screen.dart';
import 'package:note_sticker/utils/constants/app_constants.dart';

void main() {
  runApp(
    const NoteSticker()
  );
}

class NoteSticker extends StatelessWidget {
  const NoteSticker({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: AppConstants.backgroundColor,
      ),
      initialBinding: InitDependency(),
      home: const SplashScreen(),
    );
  }
}

