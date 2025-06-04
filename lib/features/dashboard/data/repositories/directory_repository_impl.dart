import 'package:flutterexam/core/error/app_error.dart';
import 'package:flutterexam/features/dashboard/data/services/directory_service.dart';
import 'package:flutterexam/features/dashboard/domain/entities/directory_entity.dart';
import 'package:flutterexam/features/dashboard/domain/repositories/directory_repository.dart';
import 'package:fpdart/fpdart.dart';

class DirectoryRepositoryImpl implements DirectoryRepository {
  final DirectoryService directoryService;

  DirectoryRepositoryImpl(this.directoryService);

  @override
  Future<Either<AppError, DirectoryEntity>> getDirectory() async {
    final result = await directoryService.getDirectoryData();
    return result.fold(
      left,
      (model) => right(model.toEntity()),
    );
  }
}
