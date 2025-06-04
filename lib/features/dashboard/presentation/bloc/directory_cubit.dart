import 'package:directory/features/dashboard/domain/dashboard_domain.dart';
import 'package:directory/features/dashboard/presentation/dashboard_presentation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DirectoryCubit extends Cubit<DirectoryState> {
  final GetDirectoryUseCase getDirectoryUseCase;

  DirectoryCubit(this.getDirectoryUseCase) : super(DirectoryLoading());

  Future<void> initializeDirectory() async {
    emit(DirectoryLoading());
    final result = await getDirectoryUseCase();
    result.fold(
      (error) => emit(DirectoryError(error: error)),
      (data) => emit(DirectoryData(data: data)),
    );
  }
}
