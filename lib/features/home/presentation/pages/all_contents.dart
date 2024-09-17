import 'package:flutter/material.dart';

class AllContantsTap extends StatelessWidget {
  const AllContantsTap({super.key, required this.tabController});
  final TabController tabController;
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Wellcome to AllContantsTap Sceen'),
    );
  }
}
