import 'package:directory/features/dashboard/data/dashboard_data.dart';
import 'package:directory/features/dashboard/domain/dashboard_domain.dart';
import 'package:directory/features/dashboard/presentation/bloc/directory_cubit.dart';
import 'package:directory/features/dashboard/presentation/dashboard_presentation.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.add(DirectoryCubit.new);
    i.add(GetDirectoryUseCase.new);
    i.add<DirectoryRepository>(DirectoryRepositoryImpl.new);
    i.add<DirectoryService>(DirectoryServiceImpl.new);
  }
}
