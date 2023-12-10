import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_sticker/pages/home_screen.dart';
import 'package:note_sticker/utils/constants/app_constants.dart';
import 'package:note_sticker/utils/constants/custom_widgets/app_text_ui.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    Future.delayed(
        (const Duration(seconds: 5)),() =>{
          Get.to(()=> HomeScreen())
     }
    );
  }


  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Center(
        child: AppTextUi(),
      ),
    );
  }
}


