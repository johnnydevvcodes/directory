import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterexam/features/dashboard/domain/entities/directory_entity.dart';
import 'package:flutterexam/features/dashboard/presentation/bloc/directory_cubit.dart';
import 'package:flutterexam/features/dashboard/presentation/bloc/directory_state.dart';
import 'package:flutterexam/features/dashboard/presentation/widgets/directory_card_widget.dart';
import 'package:flutterexam/features/dashboard/presentation/widgets/transaction_widget.dart';
import 'package:gap/gap.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DirectoryCubit get _cubit => BlocProvider.of(context);

  @override
  void initState() {
    super.initState();
    _cubit.initializeDirectory();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DirectoryCubit, DirectoryState>(
      listener: (context, state) {
        if (state is DirectoryError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error.message)),
          );
        }
      },
      builder: (context, state) {
        final isData = state is DirectoryData;

        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: RefreshIndicator.adaptive(
              onRefresh: () async => _cubit.initializeDirectory(),
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Skeletonizer(
                  enabled: state is DirectoryLoading,
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Center(child: Text('Pull to refresh')),
                        const Gap(24),
                        DirectoryCardWidget(
                          directory: isData
                              ? state.data.directory
                              : DirectoryStatsEntity.empty(),
                        ),
                        const SizedBox(height: 40),
                        TransactionWidget(
                          transactions:
                              isData ? state.data.transactions : const [],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
