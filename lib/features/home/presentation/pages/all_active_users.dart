import 'package:chaty/core/di/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/utils.dart';
import '../../domain/entities/all_active_users_entity.dart';
import '../bloc/cubit/home_cubit.dart';

import '../widgets/usres_list.dart';

class AllActiveUsers extends StatelessWidget {
  const AllActiveUsers({super.key, required this.tabController});
  final TabController tabController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 5),
      child: BlocProvider(
        create: (context) => getIt<HomeCubit>()..getAllActiveUsers(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'All  Active Usres',
              style: AppStyle.style20Bold,
            ),
            BlocConsumer<HomeCubit, HomeState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                return state.maybeWhen(
                  error: (e) => const SizedBox.shrink(),
                  loading: () => const Expanded(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                  success: (allActiveUsers) {
                    final List<ActiveUser> activeUsres = allActiveUsers.data;
                    return Expanded(
                      child: ActiveUsresList(
                        activeUsres: activeUsres,
                      ),
                    );
                  },
                  orElse: () => const SizedBox.shrink(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
