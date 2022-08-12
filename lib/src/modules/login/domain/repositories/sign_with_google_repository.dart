import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:umbrela_cash/core/error/failure.dart';

abstract class SignWithGoogleRepository {
  Future<Either<Failure, User>> signWithGoogle();
}
