import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:umbrela_cash/core/config/constants.dart';
import 'package:umbrela_cash/core/error/failure.dart';
import 'package:umbrela_cash/src/modules/home/data/models/cash_model.dart';
import 'package:umbrela_cash/src/modules/home/data/models/movimentation_model.dart';

abstract class CashDataSource {
  Future<Either<Failure, CashModel>> getCash({required String cashId});
  Future<Either<Failure, bool>> setCash({required CashModel cash});
  Future<Either<Failure, List<MovimentationModel>>> getEntries(
      {required String cashId});
  Future<Either<Failure, List<MovimentationModel>>> getExits(
      {required String cashId});
}

class CashDataSourceImpl implements CashDataSource {
  final FirebaseFirestore firestore;

  CashDataSourceImpl({required this.firestore});

  @override
  Future<Either<Failure, CashModel>> getCash({required String cashId}) async {
    try {
      CashModel response = await firestore
          .collection(kCaixa)
          .doc(cashId)
          .get()
          .then((DocumentSnapshot ds) {
        if (ds.exists) {
          return CashModel.fromMap(ds.data() as Map<String, dynamic>);
        } else {
          throw ('error');
        }
      });

      return Right(response);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> setCash({required CashModel cash}) async {
    try {
      bool response = await firestore
          .collection(kCaixa)
          .doc(kCashId)
          .update(cash.toMap())
          .then((value) => true)
          .onError((error, stackTrace) => false);
      return Right(response);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MovimentationModel>>> getEntries(
      {required String cashId}) async {
    try {
      // Get docs from collection reference
      QuerySnapshot querySnapshot = await firestore
          .collection(kEntradas)
          .where('caixa', isEqualTo: cashId)
          .get();

      // Get data from docs and convert map to List
      final response = querySnapshot.docs
          .map((doc) =>
              MovimentationModel.fromMap(doc.data() as Map<String, dynamic>))
          .toList();

      return Right(response);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MovimentationModel>>> getExits(
      {required String cashId}) async {
    try {
      // Get docs from collection reference
      QuerySnapshot querySnapshot = await firestore
          .collection(kSaidas)
          .where('caixa', isEqualTo: cashId)
          .get();

      // Get data from docs and convert map to List
      final response = querySnapshot.docs
          .map((doc) =>
              MovimentationModel.fromMap(doc.data() as Map<String, dynamic>))
          .toList();

      return Right(response);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
