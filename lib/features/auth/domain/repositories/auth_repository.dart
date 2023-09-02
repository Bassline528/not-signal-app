import 'package:dartz/dartz.dart';
import 'package:not_signal/core/exceptions/auth_exception.dart';
import 'package:not_signal/features/auth/data/dtos/dtos.dart';
import 'package:not_signal/features/auth/data/mappers/login_response.dart';

abstract class AuthRepository {
  Future<Either<AuthException, LoginResponse>> register(
    RegisterDto registerDto,
  );
  Future<Either<AuthException, LoginResponse>> login(
    String username,
    String pass,
  );
  Future<Either<AuthException, Unit>> logout(
    String idToken,
  );
  Future<Either<AuthException, Tokens>> refreshToken(
    String refreshToken,
  );
  Future<Either<AuthException, UserResponse>> me(
    String idToken,
  );
}
