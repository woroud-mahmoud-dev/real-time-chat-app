import 'package:chaty/features/home/presentation/pages/all_contents.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/utils.dart';
import 'all_chats.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with WidgetsBindingObserver, SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  late TabController tabController;
  late final List<Widget> _tabs;

  @override
  void initState() {
    tabController =
        TabController(length: 3, vsync: this, initialIndex: _currentIndex);
    _tabs = [
      AllCahtsTap(
        tabController: tabController,
      ),
        
        AllContantsTap(
        tabController: tabController,
      ),
      AllContantsTap(
        tabController: tabController,
      ),
    ];
    WidgetsBinding.instance.addObserver(this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const Center(
          child: Text('Wellcome to home Sceen'),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: AppColors.black, borderRadius: BorderRadius.circular(10)),
          margin: EdgeInsets.only(left: 4.w, right: 4.w, bottom: 7.h),
          child: BottomNavigationBar(
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                  tabController.animateTo(index);
                });
                // if (index == 0) {
                //   context.read<HomeCubit>().getHome();
                // }
              },
              currentIndex: _currentIndex,
              backgroundColor: Colors.transparent,
              unselectedItemColor: AppColors.grey,
              fixedColor: AppColors.greyBackground,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
              unselectedLabelStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
              items: const [
                BottomNavigationBarItem(
                  label: "chats",
                  icon: Icon(Icons.chat),
                ),
                BottomNavigationBarItem(
                  label: "contaents",
                  icon: Icon(Icons.contact_mail),
                ),
                BottomNavigationBarItem(
                  label: "home",
                  icon: Icon(Icons.chat),
                ),
              ]),
        ));
  }
}
