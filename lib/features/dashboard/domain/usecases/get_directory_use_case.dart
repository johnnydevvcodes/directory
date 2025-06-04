import 'package:flutterexam/core/domain/base_usecase.dart';
import 'package:flutterexam/core/error/app_error.dart';
import 'package:flutterexam/features/dashboard/domain/entities/directory_entity.dart';
import 'package:flutterexam/features/dashboard/domain/repositories/directory_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetDirectoryUseCase extends BaseUseCase<DirectoryEntity, Unit> {
  final DirectoryRepository repository;

  GetDirectoryUseCase(this.repository);

  @override
  Future<Either<AppError, DirectoryEntity>> call([params]) {
    return repository.getDirectory();
  }
}
