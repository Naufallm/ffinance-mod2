import 'package:ffinance2/View/navigator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ffinance2/Controllers/main_controller.dart';
import 'package:ffinance2/View/Community.dart';
import 'package:ffinance2/View/Explore.dart';
import 'package:ffinance2/View/Market.dart';
import 'package:ffinance2/View/halaman_utama.dart';

class MainPage extends StatelessWidget {
  final MainController controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopNavigator(),
      body: Obx(() {
        return IndexedStack(
          index: controller.selectedIndex.value,
          children: [
            HalamanUtama(),
            Market(),
            Community(),
            Explore(),
            // Add more pages as necessary
          ],
        );
      }),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}
