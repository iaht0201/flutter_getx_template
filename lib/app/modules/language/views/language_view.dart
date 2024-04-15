import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/language_controller.dart';

class LanguageView extends GetView<LanguageController> {
  const LanguageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Gắn LanguageController vào GetX dependency management
    LanguageController languageController = Get.put(LanguageController());

    return Scaffold(
        appBar: AppBar(
          title: const Text('LanguageView'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Center(
                child: ElevatedButton(
              onPressed: () {
                // Gọi phương thức changeLanguage với ngôn ngữ mới (ví dụ: 'en' cho tiếng Anh)
                languageController.changeLanguage('en');
              },
              child: Text('Select English'),
            )),
            Center(
                child: ElevatedButton(
              onPressed: () {
                // Gọi phương thức changeLanguage với ngôn ngữ mới (ví dụ: 'en' cho tiếng Anh)
                languageController.changeLanguage('bn');
              },
              child: Text('Select Bengali'),
            )),
            Obx(() => Text(
                'Current language: ${languageController.currentLanguage.value}')),
          ],
        ));
  }
}
