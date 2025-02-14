import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/common/providers/passcode_provider.dart';
import 'package:flutter_getx_template/app/common/util/exports.dart';
import 'package:flutter_getx_template/app/modules/onboarding/controller/onboarding_controller.dart';
import 'package:flutter_getx_template/app/modules/widgets/custom_app_text.dart';
import 'package:flutter_getx_template/app/modules/widgets/custom_passcode_keyboard.dart';
import 'package:flutter_getx_template/app/modules/widgets/custom_scaffold_widget.dart';
import 'package:flutter_getx_template/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class OnboardingConfirmPasscodeView extends StatefulWidget {
  const OnboardingConfirmPasscodeView({Key? key}) : super(key: key);

  @override
  State<OnboardingConfirmPasscodeView> createState() =>
      _OnboardingConfirmPasscodeViewState();
}

class _OnboardingConfirmPasscodeViewState
    extends State<OnboardingConfirmPasscodeView> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Text(
            "Confirm Passcode",
            style: AppTextStyle.boldStyle.copyWith(fontSize: 28.sp),
          ),
          SizedBox(height: 8.h),
          Consumer<OnboardingProvider>(
            builder: (context, value, _) {
              return Text(
                "Enter passcode again",
                style: AppTextStyle.lightStyle.copyWith(
                  fontWeight: FontWeight.w200,
                  fontSize: 14.sp,
                ),
              );
            },
          ),
          SizedBox(height: 10.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
            decoration: ShapeDecoration(
              color: AppColors.lightGrey,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: AppColors.blue),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.topCenter,
                  child: MyText(
                    title: "Confirm Appreciate Passcode",
                    color: AppColors.hintInfotextColor,
                  ),
                ),
                SizedBox(height: 1.sh * 0.01),
                const CircularPasscodeInput(),
              ],
            ),
          ),
          // SizedBox(height: 0.025.sh),
          const Spacer(),
          Consumer2<OnboardingProvider, PasscodeProvider>(
            builder: (context, onboardingProvider, passcodeProvider, __) {
              return SizedBox(
                // height: 200.h,
                child: NumberKeyboard(
                  type: PassCodeType.signupsetPasscode,
                  userName: '',
                  onPasscodeTyped: (passcodeValue) async {
                    onboardingProvider.setConfirmPasscodeControllerValue =
                        passcodeValue;
                    if (onboardingProvider.confirmPasscodeController.text ==
                        onboardingProvider.passcodeController.text) {
                      onboardingProvider.currentStep =
                          OnboardingSteps.enable_biometric;
                      Get.toNamed(Routes.ONBOARDING_ENABLE_BIOMETRIC);
                    } else {
                      Utils.showSnackbar("Passcode does not match, set again");
                      await Future.delayed(const Duration(seconds: 2));

                      onboardingProvider.currentStep =
                          OnboardingSteps.set_passcode;
                      Get.offAndToNamed(Routes.ONBOARDING_CONFIRM_PASSCODE);
                    }
                    // clear passcode
                    passcodeProvider.clearPassCode();
                  },
                ),
              );
            },
          ),
          //   Consumer<OnboardingProvider>(
          //     builder: (context, value, _) {
          //       return CustomTextFieldWidget(
          //         labelText: "Confirm Appreciate Passcode",
          //         controller: value.confirmPasscodeController,
          //         onChanged: (updatedText) {
          //           value.setConfirmPasscodeControllerValue = updatedText ?? "";
          //         },
          //         validator: (value) => AppValidators.validatePasscode(value),
          //         keyboardType: TextInputType.phone,
          //         maxLength: 4,
          //       );
          //     },
          //   ),
          //   const Spacer(),
          //   Consumer<OnboardingProvider>(
          //     builder: (_, value, __) => CustomTextButton(
          //       title: "confirm",
          //       onPressed: AppValidators.validatePasscode(
          //                 value.confirmPasscodeController.text,
          //               ) !=
          //               null
          //           ? null
          //           : () {
          //               if (value.confirmPasscodeController.text ==
          //                   value.passcodeController.text) {
          //                 value.currentStep = OnboardingSteps.enable_biometric;
          //                 Get.toNamed(Routes.ONBOARDING_ENABLE_BIOMETRIC);
          //               } else {
          //                 Utils.showSnackbar(
          //                   "Passcode does not matchs set again",
          //                 );
          //                 value.confirmPasscodeController.text = "";
          //               }
          //             },
          //     ),
          //   ),
        ],
      ),
    );
  }
}
