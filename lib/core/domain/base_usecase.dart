import 'package:flutterexam/core/error/app_error.dart';
import 'package:fpdart/fpdart.dart';

abstract class BaseUseCase<T, Params> {
  Future<Either<AppError, T>> call([Params? params]) {
    throw UnimplementedError('call() not implemented');
  }

  Either<AppError, T> syncCall([Params? params]) {
    throw UnimplementedError('syncCall() not implemented');
  }
}
