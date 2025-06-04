import 'package:bloc_test/bloc_test.dart';
import 'package:directory/core/error/app_error.dart';
import 'package:directory/features/dashboard/domain/dashboard_domain.dart';
import 'package:directory/features/dashboard/presentation/dashboard_presentation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockGetDirectoryUseCase extends Mock implements GetDirectoryUseCase {}

void main() {
  const name = 'DirectoryCubit';
  late MockGetDirectoryUseCase mockUseCase;

  setUp(() {
    mockUseCase = MockGetDirectoryUseCase();
  });

  blocTest<DirectoryCubit, DirectoryState>(
    'check $name, when initializeDirectory then emits [DirectoryLoading, DirectoryData]',
    build: () {
      final entity = DirectoryEntity.empty();
      when(() => mockUseCase()).thenAnswer((_) async => right(entity));
      return DirectoryCubit(mockUseCase);
    },
    act: (cubit) => cubit.initializeDirectory(),
    expect: () => [
      isA<DirectoryLoading>(),
      isA<DirectoryData>(),
    ],
  );

  blocTest<DirectoryCubit, DirectoryState>(
    'check $name, when initializeDirectory then emits [DirectoryLoading, DirectoryError]',
    build: () {
      final error = AppError(message: 'error');
      when(() => mockUseCase()).thenAnswer((_) async => left(error));
      return DirectoryCubit(mockUseCase);
    },
    act: (cubit) => cubit.initializeDirectory(),
    expect: () => [
      isA<DirectoryLoading>(),
      isA<DirectoryError>(),
    ],
  );
}
