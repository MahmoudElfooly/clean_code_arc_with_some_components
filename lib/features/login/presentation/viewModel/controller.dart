import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_app/features/login/data/models/login_payload_model.dart';
import 'package:simple_app/features/login/domain/useCase/feature_name_useCase.dart';
import 'package:simple_app/features/login/presentation/viewModel/states.dart';

import '../../../../commonWidget/show_loading.dart';
import '../../../../core/constants/constant_keywords.dart';
import '../../../../core/dialogs/error_alert_dialogue_widget.dart';

class LoginInPageController extends Cubit<LoginInPageState> {
  LoginInPageController() : super(LoginInPageInit());

  static LoginInPageController of(context) => BlocProvider.of(context);
  LoginUseCase loginUseCase = LoginUseCaseImp();
  LoginInPayload loginInPayload = LoginInPayload();
  final formKey = GlobalKey<FormState>();

  void loginInRequest() async {
    if (formKey.currentState!.validate()) {
      showLoading();
      final result = await loginUseCase.loginIn(loginInPayload);
      hideLoading();
      result.fold(
        (l) {
          if (l.statusCode == 405) {
            /// Navigate To Verification
            print("Not Verified");
            // NavigationHelper.push(
            //     navigatorKey.currentContext!,
            //     VerifyPinPageView(
            //       phoneNumber: loginInModel.phoneNumberController.text,
            //       verifyType: VerifyType.login,
            //       country: loginInModel.country,
            //     ));
          } else {
            showErrorDialogue(
              l.message ?? kErrorText,
            );
          }
        },
        (r) async {
          if (r?.success ?? false) {
            showLoading();
            // await CoreInfo.getWhenLogged();
            // await CoreInfo.sendFCMToken();
            hideLoading();

            /// Navigate To Home
            // NavigationHelper.pushUntil(
            //   navigatorKey.currentContext!,
            //   const HomeScreen(),
            // );
          } else {
            showErrorDialogue(
              r?.message ?? kErrorText,
            );
          }
        },
      );
    }
  }
}
