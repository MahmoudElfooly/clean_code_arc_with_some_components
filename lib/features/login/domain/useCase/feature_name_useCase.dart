import 'package:dartz/dartz.dart';
import '../../../../core/network/exceptions/failures.dart';
import '../../data/models/login_payload_model.dart';
import '../../data/models/login_response_model.dart';
import '../../data/repoImp/login_repoImp.dart';

abstract class LoginUseCase {
  Future<Either<Failure, LoginResponseModel?>> loginIn(
      LoginInPayload loginInPayload);
}

class LoginUseCaseImp implements LoginUseCase {
  final loginRepository = LoginRepositoryImp();

  @override
  Future<Either<Failure, LoginResponseModel?>> loginIn(
      LoginInPayload loginInPayload) async {
    return await loginRepository.loginIn(loginInPayload);
  }
}
