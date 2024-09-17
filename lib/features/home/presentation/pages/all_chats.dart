import 'package:flutter/material.dart';

class AllCahtsTap extends StatelessWidget {
  const AllCahtsTap({super.key, required this.tabController});
  final TabController tabController;
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Wellcome to AllCahtsTap Sceen'),
    );
  }
}
