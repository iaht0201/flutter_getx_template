import 'dart:ui';

import 'package:get/get.dart';

class LanguageController extends GetxController {
  //TODO: Implement LanguageController
  // default en
  RxString currentLanguage = "bn".obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void changeLanguage(String languageCode) {
    print(languageCode);

    currentLanguage.value = languageCode;
    Get.updateLocale(Locale("$languageCode", ""));
  }
}
