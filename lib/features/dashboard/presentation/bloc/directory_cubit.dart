import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterexam/features/dashboard/domain/usecases/get_directory_use_case.dart';
import 'package:flutterexam/features/dashboard/presentation/bloc/directory_state.dart';

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
