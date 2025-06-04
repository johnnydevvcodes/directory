import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterexam/features/dashboard/data/repositories/directory_repository_impl.dart';
import 'package:flutterexam/features/dashboard/data/services/directory_service.dart';
import 'package:flutterexam/features/dashboard/domain/repositories/directory_repository.dart';
import 'package:flutterexam/features/dashboard/domain/usecases/get_directory_use_case.dart';
import 'package:flutterexam/features/dashboard/presentation/bloc/directory_cubit.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.add(DirectoryCubit.new);
    i.add(GetDirectoryUseCase.new);
    i.add<DirectoryRepository>(DirectoryRepositoryImpl.new);
    i.add<DirectoryService>(DirectoryServiceImpl.new);
  }
}
