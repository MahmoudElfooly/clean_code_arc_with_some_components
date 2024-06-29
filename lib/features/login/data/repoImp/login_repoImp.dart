import 'package:dartz/dartz.dart';
import 'package:simple_app/features/login/domain/repo/login_repo.dart';

import '../../../../core/network/exceptions/failures.dart';
import '../models/login_payload_model.dart';
import '../models/login_response_model.dart';
import '../remoteDataSource/login_endPoint.dart';

class LoginRepositoryImp implements LoginRepository {
  final loginEndPoint = LoginEndPoint();

  @override
  Future<Either<Failure, LoginResponseModel?>> loginIn(
      LoginInPayload loginInPayload) async {
    return await loginEndPoint.loginIn(loginInPayload);
  }
}
