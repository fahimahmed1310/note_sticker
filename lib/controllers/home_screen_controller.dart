import 'package:get/get.dart';

class HomeScreenController extends GetxController{

  bool _isGridView = false;

  bool get isGridView => _isGridView;
  set isGridView(bool value) {
    _isGridView = value;
    update();
  }


}