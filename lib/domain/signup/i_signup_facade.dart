import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/users/model/user.dart';

abstract class ISignupFacade {
  Future<Either<MainFailure, User>> signupMethod(UserModel user, context);
}
