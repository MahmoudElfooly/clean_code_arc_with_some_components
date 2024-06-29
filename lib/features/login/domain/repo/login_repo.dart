import 'package:dartz/dartz.dart';

import '../../../../core/network/exceptions/failures.dart';
import '../../data/models/login_payload_model.dart';
import '../../data/models/login_response_model.dart';

abstract class LoginRepository {
  Future<Either<Failure, LoginResponseModel?>> loginIn(
      LoginInPayload loginInPayload);
}
