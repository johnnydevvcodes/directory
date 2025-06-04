import 'package:flutterexam/core/error/app_error.dart';
import 'package:flutterexam/features/dashboard/domain/entities/directory_entity.dart';
import 'package:fpdart/fpdart.dart';

abstract class DirectoryRepository {
  Future<Either<AppError, DirectoryEntity>> getDirectory();
}
