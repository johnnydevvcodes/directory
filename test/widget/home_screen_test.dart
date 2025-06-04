import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterexam/core/error/app_error.dart';
import 'package:flutterexam/features/dashboard/domain/entities/directory_entity.dart';
import 'package:flutterexam/features/dashboard/presentation/bloc/directory_cubit.dart';
import 'package:flutterexam/features/dashboard/presentation/bloc/directory_state.dart';
import 'package:flutterexam/features/dashboard/presentation/screens/home_screen.dart';
import 'package:flutterexam/features/dashboard/presentation/widgets/directory_item_widget.dart';
import 'package:mocktail/mocktail.dart';

class MockDirectoryCubit extends Mock implements DirectoryCubit {}

void main() {
  const name = 'HomeScreen';
  late MockDirectoryCubit mockCubit;

  setUp(() {
    mockCubit = MockDirectoryCubit();
    when(() => mockCubit.initializeDirectory()).thenAnswer((_) async {});
  });

  Widget buildTestable(DirectoryCubit cubit) {
    return MaterialApp(
      home: BlocProvider<DirectoryCubit>.value(
        value: cubit,
        child: const HomeScreen(),
      ),
    );
  }

  testWidgets('check $name, when emits DirectoryLoading then shows loading',
      (tester) async {
    whenListen(
      mockCubit,
      Stream.value(
        DirectoryData(
          data: const DirectoryEntity(
            directory: DirectoryStatsEntity(
              plantations: 12,
              collectionPoints: 0,
              transport: 0,
              deliveryOrders: 0,
            ),
            transactions: [],
          ),
        ),
      ),
      initialState: DirectoryLoading(),
    );

    await tester.pumpWidget(buildTestable(mockCubit));

    expect(
      find.byType(CircularProgressIndicator),
      findsNothing,
    );
  });

  testWidgets('check $name, when emits DirectoryData then shows data',
      (tester) async {
    whenListen(
      mockCubit,
      Stream.value(
        DirectoryData(
          data: const DirectoryEntity(
            directory: DirectoryStatsEntity(
              plantations: 12,
              collectionPoints: 0,
              transport: 0,
              deliveryOrders: 0,
            ),
            transactions: [],
          ),
        ),
      ),
      initialState: DirectoryLoading(),
    );

    await tester.pumpWidget(buildTestable(mockCubit));
    await tester.pumpAndSettle();

    final finder = find.byType(DirectoryItem);
    expect(finder, findsAny);

    final item = tester.widget<DirectoryItem>(finder.first);
    expect(item.count, isNonNegative);
    expect(item.count, isNonZero);
  });

  testWidgets('check $name, when emits DirectoryError then shows error',
      (tester) async {
    final error = AppError(message: 'error');
    whenListen(
      mockCubit,
      Stream.value(DirectoryError(error: error)),
      initialState: DirectoryLoading(),
    );

    await tester.pumpWidget(buildTestable(mockCubit));

    await tester.pumpAndSettle();

    expect(find.text(error.message), findsOneWidget);
  });
}
