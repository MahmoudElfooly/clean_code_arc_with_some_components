// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:simple_app/core/constants/constant_colors.dart';
// import 'package:simple_app/core/extensions/buildcontext_extensions.dart';
// import 'package:simple_app/core/helper/size_config.dart';
//
//
// import '../../../../../commonWidget/general_text.dart';
// import '../../../../../commonWidget/main_layout_widget.dart';
// import '../../viewModel/controller.dart';
//
// class LoginPageScaffold extends StatelessWidget {
//   const LoginPageScaffold({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     LoginInPageController blocController = LoginInPageController.of(context);
//     return MainLayoutWidget(
//       // backGroundColor: kDarkBackgroundColor,
//       extendBodyBehindAppBar: true,
//       widthMargin: 0.0,
//       heightMargin: 0.0,
//       isSafeArea: false,
//       minHeight: SizeConfig.screenHeight,
//       maxHeight: SizeConfig.screenHeight,
//       widget: Scaffold(
//         body: GestureDetector(
//           onTap: () {
//             FocusManager.instance.primaryFocus?.unfocus();
//           },
//           child: SafeArea(
//             child: Container(
//               width: double.infinity,
//               padding: const EdgeInsets.only(
//                   left: 32, right: 32, top: 40, bottom: 20),
//               color: kBackgroundColor,
//               child: Form(
//                 key: blocController.formKey,
//                 child: SingleChildScrollView(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // TitleWithBackButton(
//                       //   title: "Driver Sign In".tr(),
//                       // )
//                       GeneralText(
//                         text: "User Sign In".tr(),
//                         color: kFontColor,
//                         size: 18,
//                         fontWeight: FontWeight.w600,
//                       ),
//                       const SizedBox(
//                         height: 28,
//                       ),
//                       Image.asset("assets/images/authLogoPng.png"),
//                       const SizedBox(
//                         height: 16,
//                       ),
//                       GeneralText(
//                         text: "Enter Phone Number".tr(),
//                         color: kFontColor,
//                         size: 24,
//                       ),
//                       const SizedBox(
//                         height: 16,
//                       ),
//                       SizedBox(
//                         width: SizeConfig.screenWidth,
//                         child: Row(
//                           children: [
//                             Flexible(
//                               flex: 1,
//                               child: GeneralTextField(
//                                 textAlign: TextAlign.center,
//                                 keyboardType: TextInputType.text,
//                                 enabled: false,
//                                 textController:
//                                     TextEditingController(text: "+966"),
//                                 prefix: Padding(
//                                   padding: const EdgeInsets.symmetric(
//                                       horizontal: 7.0),
//                                   child: SvgPicture.asset(
//                                     "assets/images/saudi-arabia.svg",
//                                     fit: BoxFit.contain,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(width: 9),
//                             Flexible(
//                               flex: 2,
//                               child: GeneralTextField(
//                                 keyboardType: TextInputType.number,
//                                 textController: blocController
//                                     .loginInModel.phoneNumberController,
//                                 labelText: "Mobile number".tr(),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 16,
//                       ),
//                       GeneralTextField(
//                         keyboardType: TextInputType.text,
//                         textController:
//                             blocController.loginInModel.passwordController,
//                         isPassword: true,
//                         labelText: "Password".tr(),
//                       ),
//                       const SizedBox(height: 8),
//                       Align(
//                         alignment: context.isEnglish
//                             ? Alignment.centerRight
//                             : Alignment.centerLeft,
//                         child: InkWell(
//                           onTap: () {
//                             NavigationHelper.push(
//                               navigatorKey.currentContext!,
//                               const ForgetPasswordScreen(),
//                             );
//                           },
//                           child: GeneralText(
//                             text: "Forgot Password?".tr(),
//                             size: 11,
//                             color: kGreyTextColor,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 32),
//                       GeneralButton(
//                         text: 'Continue'.tr(),
//                         fontSize: 17,
//                         onPressed: () {
//                           blocController.loginInRequest();
//                         },
//                       ),
//                       const SizedBox(height: 24),
//                       Center(
//                         child: InkWell(
//                           onTap: () {},
//                           child: RichText(
//                             text: TextSpan(
//                               children: [
//                                 TextSpan(
//                                   text: "Don’t have an account?".tr(),
//                                   style: const TextStyle(
//                                     color: kGreyTextColor,
//                                     fontSize: 18,
//                                   ),
//                                 ),
//                                 TextSpan(
//                                   text: " ${"Sign Up".tr()}",
//                                   style: const TextStyle(
//                                     decoration: TextDecoration.underline,
//                                     color: kPrimaryColor,
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 16,
//                       ),
//                       Center(
//                         child: GeneralText(
//                           text: "Or".tr(),
//                           size: 18,
//                           color: kGreyTextColor,
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 16,
//                       ),
//                       Center(
//                         child: InkWell(
//                           onTap: () {
//                             NavigationHelper.push(
//                               navigatorKey.currentContext!,
//                               const HomeScreen(),
//                             );
//                           },
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               GeneralText(
//                                 text: "Continue As A Guest".tr(),
//                                 size: 18,
//                                 color: kPrimaryColor,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                               const SizedBox(
//                                 width: 8,
//                               ),
//                               const Icon(Icons.arrow_forward),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
