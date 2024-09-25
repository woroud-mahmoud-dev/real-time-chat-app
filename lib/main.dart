import 'package:chaty/core/services/local/cache_helper.dart';
import 'package:chaty/core/utils/shared_pref_const.dart';
import 'package:chaty/features/auth/presentation/pages/login_screen.dart';
import 'package:chaty/features/home/presentation/pages/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'core/di/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  await CacheHelper.init();
  await dotenv.load();
  runApp(const MyApp());
}

// checkIfLogedIn() async {
//   String? userToken = await CacheHelper.getData(key: SharedPrefConst.apiToken);
//   if (userToken.isNullOrEmpty()) {
//     print(" token is ${CacheHelper.getData(key: SharedPrefConst.apiToken)}");
//     isLogedIn = false;
//   } else {
//     isLogedIn = true;
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            builder: EasyLoading.init(),
            home: CacheHelper.getData(key: SharedPrefConst.apiToken) != null
                ? const HomeScreen()
                : const LoginScreen(),
          );
        });
  }
}
