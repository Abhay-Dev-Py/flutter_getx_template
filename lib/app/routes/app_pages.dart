import 'package:flutter_getx_template/app/data/services/navigation_service.dart';
import 'package:flutter_getx_template/app/modules/admin_dashboard/view/admin_agent_otp_verify_view.dart';
import 'package:flutter_getx_template/app/modules/admin_dashboard/view/admin_agent_request_details_view.dart';
import 'package:flutter_getx_template/app/modules/admin_dashboard/view/admin_agent_verification_status_view.dart';
import 'package:flutter_getx_template/app/modules/admin_dashboard/view/admin_dashboard_view.dart';
import 'package:flutter_getx_template/app/modules/admin_dashboard/view/agent_biometric_views/biometric_steps_view.dart';
import 'package:flutter_getx_template/app/modules/admin_dashboard/view/agent_mobile_verification_view/agent_mobile_verification_view.dart';
import 'package:flutter_getx_template/app/modules/admin_dashboard/view/agent_picture_verification_views/capture_agent_picture_view.dart';
import 'package:flutter_getx_template/app/modules/admin_dashboard/view/agent_picture_verification_views/upload_agent_picture_view.dart';
import 'package:flutter_getx_template/app/modules/admin_dashboard/view/details_confirmation_views/confirm_agent_details_view.dart';
import 'package:flutter_getx_template/app/modules/admin_dashboard/view/pan_verification_views/pan_error_view.dart';
import 'package:flutter_getx_template/app/modules/admin_dashboard/view/pan_verification_views/pan_front_view.dart';
import 'package:flutter_getx_template/app/modules/admin_dashboard/view/pan_verification_views/pan_review_view.dart';
import 'package:flutter_getx_template/app/modules/admin_dashboard/view/pan_verification_views/pan_submit_view.dart';
import 'package:flutter_getx_template/app/modules/admin_dashboard/view/pan_verification_views/pan_upload_view.dart';
import 'package:flutter_getx_template/app/modules/admin_dashboard/view/shop_details_views/capture_shop_picture_view.dart';
import 'package:flutter_getx_template/app/modules/admin_dashboard/view/shop_details_views/upload_shop_picture_view.dart';
import 'package:flutter_getx_template/app/modules/agent_dashboard/view/agent_dashboard_view.dart';
import 'package:flutter_getx_template/app/modules/landing/view/app_landing_view.dart';
import 'package:flutter_getx_template/app/modules/onboarding/views/onboarding_confirm_passcode_view.dart';
import 'package:flutter_getx_template/app/modules/onboarding/views/onboarding_e_sign_view.dart';
import 'package:flutter_getx_template/app/modules/onboarding/views/onboarding_email_address_view.dart';
import 'package:flutter_getx_template/app/modules/onboarding/views/onboarding_enable_biometric_view.dart';
import 'package:flutter_getx_template/app/modules/onboarding/views/onboarding_iibf_certificate_view.dart';
import 'package:flutter_getx_template/app/modules/onboarding/views/onboarding_location_view.dart';
import 'package:flutter_getx_template/app/modules/onboarding/views/onboarding_mobile_number_view.dart';
import 'package:flutter_getx_template/app/modules/onboarding/views/onboarding_pan_details_view.dart';
import 'package:flutter_getx_template/app/modules/onboarding/views/onboarding_review_details_view.dart';
import 'package:flutter_getx_template/app/modules/onboarding/views/onboarding_schedule_offline_verification_view.dart';
import 'package:flutter_getx_template/app/modules/onboarding/views/onboarding_set_passcode_view.dart';
import 'package:flutter_getx_template/app/modules/onboarding/views/onboarding_shop_details.dart';
import 'package:flutter_getx_template/app/modules/onboarding/views/onboarding_success_view.dart';
import 'package:flutter_getx_template/app/modules/onboarding/views/onboarding_verify_email_otp_view.dart';
import 'package:flutter_getx_template/app/modules/onboarding/views/onboarding_verify_mobile_otp_view.dart';
import 'package:flutter_getx_template/app/modules/sign_in/view/sign_in_mobile_number_view.dart';
import 'package:flutter_getx_template/app/modules/sign_in/view/sign_in_passcode_verify_screen.dart';
import 'package:flutter_getx_template/app/modules/widgets/help_desk_view.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

part 'app_routes.dart';

abstract class AppPages {
  const AppPages._();

  static const INITIAL = Routes.BIOMETRIC_STEPS_VIEW;

  static final routes = [
    GetPage(
      name: _Paths.LANDING,
      page: () => const AppLandingView(),
    ),
    GetPage(
      name: _Paths.HELP_DESK_VIEW,
      page: () => const HelpDeskView(),
    ),
    // Onboarding pages
    GetPage(
      name: _Paths.ONBOARDING_LOCATION,
      page: () => const OnboardingLocationView(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_MOBILE_NUMBER,
      page: () => const OnboardingMobileNumberView(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_VERIFY_MOBILE_OTP,
      page: () => const OnboardingVerifyMobileOtpView(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_EMAIL_ADDRESS,
      page: () => const OnboardingEmailAddressView(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_VERIFY_EMAIL_OTP,
      page: () => const OnboardingVerifyEmailOtpView(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_SET_PASSCODE,
      page: () => const OnboardingSetPasscodeView(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_CONFIRM_PASSCODE,
      page: () => const OnboardingConfirmPasscodeView(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_ENABLE_BIOMETRIC,
      page: () => const OnboardingEnableBiometricView(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_PAN_DETAILS,
      page: () => const OnboardingPanDetailsView(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_SHOP_DETAILS,
      page: () => const OnboardingShopDetailsView(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_CERTIFICATE_DETAILS,
      page: () => const OnboardingIIBFCertificateDetailsView(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_REVIEW_DETAILS,
      page: () => const OnboardingReviewDetailsView(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_E_SIGN_VIEW,
      page: () => const OnboardingEsignView(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_SCHEDULE_OFFLINE_VERIFICATION,
      page: () => const OnboardingScheduleOfflineVerificationView(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_SUCCESS,
      page: () => const OnboardingSuccessView(),
    ),
    // Agent views
    GetPage(
      name: _Paths.ADMIN_DASHBOARD,
      page: () => const AdminDashboardView(),
    ),
    GetPage(
      name: _Paths.AGENT_DASHBOARD,
      page: () => const AgentDashboardView(),
    ),
    // Sign in views
    GetPage(
      name: _Paths.SIGN_IN_MOBILE,
      page: () => const SignInMobileNumberView(),
    ),
    GetPage(
      name: _Paths.SIGN_IN_MOBILE,
      page: () => const SignInMobileNumberView(),
    ),
    GetPage(
      name: _Paths.SIGN_IN_PASSCODE_VERIFY,
      page: () => const SignInPasscodeVerifyView(),
    ),
    GetPage(
      name: _Paths.ADMIN_AGENT_REQUEST_DETAILS,
      page: () => const AdminAgentRequestDetailsView(),
    ),
    GetPage(
      name: _Paths.ADMIN_AGENT_OTP_VERIFY,
      page: () => const AdminAgentOtpVerifyView(),
    ),
    GetPage(
      name: _Paths.ADMIN_AGENT_VERIFICATION_STATUS,
      page: () => const AdminAgentVerificationStatusView(),
    ),
    GetPage(
      name: _Paths.PAN_UPLOAD_VIEW,
      page: () => const PanUploadView(),
    ),
    GetPage(
      name: _Paths.PAN_FRONT_VIEW,
      page: () => const PanFrontView(),
    ),
    GetPage(
      name: _Paths.PAN_REVIEW_VIEW,
      page: () => const PanReviewView(),
    ),
    GetPage(
      name: _Paths.PAN_SUBMIT_VIEW,
      page: () => const PanSubmitView(),
    ),
    GetPage(
      name: _Paths.PAN_ERROR_VIEW,
      page: () => const PanErrorView(),
    ),
    GetPage(
      name: _Paths.CONFIRM_AGENT_DETAILS_VIEW,
      page: () => const ConfirmAgentDetailsView(),
    ),
    GetPage(
      name: _Paths.CAPTURE_SHOP_PICTURE_VIEW,
      page: () => const CaptureShopPictureView(),
    ),
    GetPage(
      name: _Paths.UPLOAD_SHOP_PICTURE_VIEW,
      page: () => const UploadShopPictureView(),
    ),
    GetPage(
      name: _Paths.CAPTURE_AGENT_PICTURE_VIEW,
      page: () => const CaptureAgentPictureView(),
    ),
    GetPage(
      name: _Paths.UPLOAD_AGENT_PICTURE_VIEW,
      page: () => const UploadAgentPictureView(),
    ),
    GetPage(
      name: _Paths.VERIFY_AGENT_NUMBER_VIEW,
      page: () => const AgentMobileVerificationView(),
    ),
    GetPage(
      name: _Paths.BIOMETRIC_STEPS_VIEW,
      page: () => const BiometricStepsView(),
    ),
  ];

  static final goRoutes = GoRouter(
    navigatorKey: AppNavigation.navigatorKey,
    initialLocation: INITIAL,
    routes: [
      GoRoute(
        path: _Paths.LANDING,
        builder: (context, state) => const AppLandingView(),
      ),
      GoRoute(
        path: _Paths.ONBOARDING_LOCATION,
        name: _Paths.ONBOARDING_LOCATION,
        builder: (context, state) => const OnboardingLocationView(),
      ),
      GoRoute(
        path: _Paths.ONBOARDING_MOBILE_NUMBER,
        name: _Paths.ONBOARDING_MOBILE_NUMBER,
        builder: (context, state) => const OnboardingMobileNumberView(),
      ),
      GoRoute(
        path: _Paths.ONBOARDING_VERIFY_MOBILE_OTP,
        name: _Paths.ONBOARDING_VERIFY_MOBILE_OTP,
        builder: (context, state) => const OnboardingVerifyMobileOtpView(),
      ),
      GoRoute(
        path: _Paths.ONBOARDING_EMAIL_ADDRESS,
        name: _Paths.ONBOARDING_EMAIL_ADDRESS,
        builder: (context, state) => const OnboardingEmailAddressView(),
      ),
      GoRoute(
        path: _Paths.ONBOARDING_VERIFY_EMAIL_OTP,
        name: _Paths.ONBOARDING_VERIFY_EMAIL_OTP,
        builder: (context, state) => const OnboardingVerifyEmailOtpView(),
      ),
      GoRoute(
        path: _Paths.ONBOARDING_SET_PASSCODE,
        name: _Paths.ONBOARDING_SET_PASSCODE,
        builder: (context, state) => const OnboardingSetPasscodeView(),
      ),
      GoRoute(
        path: _Paths.ONBOARDING_CONFIRM_PASSCODE,
        name: _Paths.ONBOARDING_CONFIRM_PASSCODE,
        builder: (context, state) => const OnboardingConfirmPasscodeView(),
      ),
      GoRoute(
        path: _Paths.ONBOARDING_ENABLE_BIOMETRIC,
        name: _Paths.ONBOARDING_ENABLE_BIOMETRIC,
        builder: (context, state) => const OnboardingEnableBiometricView(),
      ),
      GoRoute(
        path: _Paths.ONBOARDING_PAN_DETAILS,
        name: _Paths.ONBOARDING_PAN_DETAILS,
        builder: (context, state) => const OnboardingPanDetailsView(),
      ),
      GoRoute(
        path: _Paths.ONBOARDING_SHOP_DETAILS,
        name: _Paths.ONBOARDING_SHOP_DETAILS,
        builder: (context, state) => const OnboardingShopDetailsView(),
      ),
      GoRoute(
        path: _Paths.ONBOARDING_CERTIFICATE_DETAILS,
        name: _Paths.ONBOARDING_CERTIFICATE_DETAILS,
        builder: (context, state) =>
            const OnboardingIIBFCertificateDetailsView(),
      ),
      GoRoute(
        path: _Paths.ONBOARDING_REVIEW_DETAILS,
        name: _Paths.ONBOARDING_REVIEW_DETAILS,
        builder: (context, state) => const OnboardingReviewDetailsView(),
      ),
      GoRoute(
        path: _Paths.ONBOARDING_SCHEDULE_OFFLINE_VERIFICATION,
        name: _Paths.ONBOARDING_SCHEDULE_OFFLINE_VERIFICATION,
        builder: (context, state) =>
            const OnboardingScheduleOfflineVerificationView(),
      ),
    ],
  );
}
