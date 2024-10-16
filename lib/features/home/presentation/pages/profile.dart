import 'package:chaty/core/services/local/cache_helper.dart';
import 'package:chaty/core/utils/utils.dart';
import 'package:chaty/features/auth/presentation/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ProfileSceen extends StatelessWidget {
  const ProfileSceen({super.key, required this.tabController});
  final TabController tabController;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'logout',
            style: AppStyle.style20Bold,
          ),
          IconButton(
              onPressed: () {
                CacheHelper.clearData();
                Get.offAll(() => const LoginScreen());
              },
              icon: Icon(
                Icons.logout,
                size: 66,
              )),
        ],
      ),
    );
  }
}
