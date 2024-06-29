import 'package:dartz/dartz.dart';

import '../../../../core/baseRepo/base_repo.dart';
import '../../../../core/network/exceptions/failures.dart';
import '../../../../core/utls/urls.dart';
import '../models/login_payload_model.dart';
import '../models/login_response_model.dart';

class LoginEndPoint extends NetworkService {
  Future<Either<Failure, LoginResponseModel?>> loginIn(
      LoginInPayload loginInPayload) async {
    return await exceptionHandler(
      () async {
        Map<String, dynamic> result = await dioHelper.postDataWithoutToken(
            URLs.login, loginInPayload.toJson());
        return LoginResponseModel.fromJson(result);
      },
    );
  }
}
