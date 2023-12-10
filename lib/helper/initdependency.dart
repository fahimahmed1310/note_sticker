import 'package:get/get.dart';
import 'package:note_sticker/controllers/home_screen_controller.dart';

class InitDependency extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenController() );
  }

}