import 'package:get/get.dart';

class HomeContoller extends GetxController {
  static HomeContoller get instance => Get.find();

  final carousalCurrentIndex = 0.obs;

  void updatePackageIndicator(index){
    carousalCurrentIndex.value = index;
  }

}