import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class PictureController extends GetxController {
  var isProficPicPathSet = false.obs;
  var profilePicPath = "".obs;

  void setProfileImagePatch(String path) {
    profilePicPath.value = path;
    isProficPicPathSet.value = true;
  }
}
