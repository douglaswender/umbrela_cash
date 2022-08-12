import 'package:firebase_auth/firebase_auth.dart';
import 'package:umbrela_cash/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:umbrela_cash/core/utils/usecase.dart';
import 'package:umbrela_cash/src/modules/login/domain/repositories/sign_with_google_repository.dart';

class SignWithGoogle implements UseCase<User, Params?> {
  final SignWithGoogleRepository repository;

  SignWithGoogle({required this.repository});
  @override
  Future<Either<Failure, User>> call({Params? params}) async {
    return await repository.signWithGoogle();
  }
}

class Params {}
