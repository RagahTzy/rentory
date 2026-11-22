// lib/core/routing/app_router.dart
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../presentation/auth/login_screen.dart';
import '../../presentation/auth/register_screen.dart';
import '../../presentation/auth/forgot_password_screen.dart';
import '../../presentation/auth/role_select_screen.dart';
import '../../presentation/auth/vendor_register_screen.dart';
import '../../presentation/home/home_screen.dart';
import '../../presentation/product/product_detail_screen.dart';
import '../../presentation/product/product_search_screen.dart';
import '../../presentation/booking/booking_create_screen.dart';
import '../../presentation/booking/my_bookings_screen.dart';
import '../../presentation/booking/booking_detail_screen.dart';
import '../../presentation/rental/my_rentals_screen.dart';
import '../../presentation/rental/rental_detail_screen.dart';
import '../../presentation/rental/handover_screen.dart';
import '../../presentation/rental/return_screen.dart';
import '../../presentation/rental/extension_screen.dart';
import '../../presentation/payment/payment_screen.dart';
import '../../presentation/payment/upload_proof_screen.dart';
import '../../presentation/payment/receipt_screen.dart';
import '../../presentation/profile/profile_screen.dart';
import '../../presentation/profile/edit_profile_screen.dart';
import '../../presentation/profile/switch_role_screen.dart';
import '../../presentation/vendor/vendor_dashboard_screen.dart';
import '../../presentation/vendor/store_profile_screen.dart';
import '../../presentation/vendor/vendor_products_screen.dart';
import '../../presentation/vendor/vendor_bookings_screen.dart';
import '../../presentation/vendor/vendor_rentals_screen.dart';
import '../../presentation/vendor/vendor_payments_screen.dart';
import '../../presentation/vendor/vendor_customers_screen.dart';
import '../../presentation/vendor/vendor_maintenance_screen.dart';
import '../../presentation/vendor/vendor_reports_screen.dart';
import '../../presentation/vendor/vendor_reviews_screen.dart';
import '../../presentation/vendor/vendor_pending_screen.dart';
import '../../presentation/admin/admin_dashboard_screen.dart';
import '../../presentation/admin/vendor_verification_screen.dart';
import '../../presentation/admin/moderation_screen.dart';
import '../../presentation/admin/disputes_screen.dart';
import '../../presentation/admin/categories_screen.dart';
import '../../presentation/chat/chat_list_screen.dart';
import '../../presentation/chat/chat_room_screen.dart';
import '../../presentation/notifications/notification_screen.dart';
import '../../presentation/shared/splash_screen.dart';
import '../auth/auth_state.dart';
import '../constants/app_constants.dart';

const _vendorPendingPath = '/vendor/pending';

/// Guard navigasi. Dipisah dari GoRouter supaya mudah dibaca & dites.
String? authRedirect(AuthState authState, String location) {
  // Splash menentukan tujuan awalnya sendiri.
  if (location == '/splash') return null;

  final isAuthRoute = location.startsWith('/auth');

  if (authState is! Authenticated) {
    return isAuthRoute ? null : '/auth/login';
  }

  final user = authState.user;
  final home = homePathFor(user);

  if (isAuthRoute) return home;

  final isVendor = user.role == AppConstants.rolePengusaha;
  final isVendorVerified = isVendor && user.status == AppConstants.statusAktif;

  // /vendor/pending hanya untuk pengusaha yang BELUM terverifikasi.
  // Dicek terpisah dari route /vendor/* lain agar tidak terjadi loop redirect.
  if (location == _vendorPendingPath) {
    return (isVendor && !isVendorVerified) ? null : home;
  }

  if (location.startsWith('/vendor') && !isVendorVerified) return home;

  if (location.startsWith('/admin') && user.role != AppConstants.roleAdmin) return home;

  return null;
}

final routerProvider = Provider<GoRouter>((ref) {
  // GoRouter dibuat SEKALI. Perubahan login cukup memicu evaluasi ulang
  // redirect lewat refreshListenable (bukan membuat GoRouter baru, yang
  // dulu membuat navigasi ter-reset ke /splash setiap kali login).
  final authRefresh = ValueNotifier<AuthState>(ref.read(authStateProvider));
  ref.listen<AuthState>(authStateProvider, (_, next) => authRefresh.value = next);
  ref.onDispose(authRefresh.dispose);

  final router = GoRouter(
    initialLocation: '/splash',
    debugLogDiagnostics: true,
    refreshListenable: authRefresh,
    redirect: (context, state) => authRedirect(authRefresh.value, state.matchedLocation),
    routes: [
      GoRoute(
        path: '/splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/auth/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/auth/register',
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: '/auth/role-select',
        builder: (context, state) => const RoleSelectScreen(),
      ),
      GoRoute(
        path: '/auth/vendor-register',
        builder: (context, state) => const VendorRegisterScreen(),
      ),
      GoRoute(
        path: '/auth/forgot-password',
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/search',
        builder: (context, state) => const ProductSearchScreen(),
      ),
      GoRoute(
        path: '/product/:id',
        builder: (context, state) => ProductDetailScreen(productId: state.pathParameters['id']!),
      ),
      GoRoute(
        path: '/booking/create/:productId',
        builder: (context, state) => BookingCreateScreen(productId: state.pathParameters['productId']!),
      ),
      GoRoute(
        path: '/my-bookings',
        builder: (context, state) => const MyBookingsScreen(),
      ),
      GoRoute(
        path: '/booking/:id',
        builder: (context, state) => BookingDetailScreen(bookingId: state.pathParameters['id']!),
      ),
      GoRoute(
        path: '/my-rentals',
        builder: (context, state) => const MyRentalsScreen(),
      ),
      GoRoute(
        path: '/rental/:id',
        builder: (context, state) => RentalDetailScreen(rentalId: state.pathParameters['id']!),
      ),
      GoRoute(
        path: '/rental/:id/handover',
        builder: (context, state) => HandoverScreen(rentalId: state.pathParameters['id']!),
      ),
      GoRoute(
        path: '/rental/:id/return',
        builder: (context, state) => ReturnScreen(rentalId: state.pathParameters['id']!),
      ),
      GoRoute(
        path: '/rental/:id/extend',
        builder: (context, state) => ExtensionScreen(rentalId: state.pathParameters['id']!),
      ),
      GoRoute(
        path: '/payment/:rentalId',
        builder: (context, state) => PaymentScreen(rentalId: state.pathParameters['rentalId']!),
      ),
      GoRoute(
        path: '/payment/:rentalId/upload-proof/:paymentId',
        builder: (context, state) => UploadProofScreen(
          rentalId: state.pathParameters['rentalId']!,
          paymentId: state.pathParameters['paymentId']!,
        ),
      ),
      GoRoute(
        path: '/payment/:rentalId/receipt/:paymentId',
        builder: (context, state) => ReceiptScreen(
          rentalId: state.pathParameters['rentalId']!,
          paymentId: state.pathParameters['paymentId']!,
        ),
      ),
      GoRoute(
        path: '/profile',
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: '/profile/edit',
        builder: (context, state) => const EditProfileScreen(),
      ),
      GoRoute(
        path: '/profile/switch-role',
        builder: (context, state) => const SwitchRoleScreen(),
      ),
      GoRoute(
        path: '/vendor/dashboard',
        builder: (context, state) => const VendorDashboardScreen(),
      ),
      GoRoute(
        path: '/vendor/pending',
        builder: (context, state) => const VendorPendingScreen(),
      ),
      GoRoute(
        path: '/vendor/profile',
        builder: (context, state) => const StoreProfileScreen(),
      ),
      GoRoute(
        path: '/vendor/products',
        builder: (context, state) => const VendorProductsScreen(),
      ),
      GoRoute(
        path: '/vendor/bookings',
        builder: (context, state) => const VendorBookingsScreen(),
      ),
      GoRoute(
        path: '/vendor/rentals',
        builder: (context, state) => const VendorRentalsScreen(),
      ),
      GoRoute(
        path: '/vendor/payments',
        builder: (context, state) => const VendorPaymentsScreen(),
      ),
      GoRoute(
        path: '/vendor/customers',
        builder: (context, state) => const VendorCustomersScreen(),
      ),
      GoRoute(
        path: '/vendor/maintenance',
        builder: (context, state) => const VendorMaintenanceScreen(),
      ),
      GoRoute(
        path: '/vendor/reports',
        builder: (context, state) => const VendorReportsScreen(),
      ),
      GoRoute(
        path: '/vendor/reviews',
        builder: (context, state) => const VendorReviewsScreen(),
      ),
      GoRoute(
        path: '/admin/dashboard',
        builder: (context, state) => const AdminDashboardScreen(),
      ),
      GoRoute(
        path: '/admin/vendor-verification',
        builder: (context, state) => const VendorVerificationScreen(),
      ),
      GoRoute(
        path: '/admin/moderation',
        builder: (context, state) => const ModerationScreen(),
      ),
      GoRoute(
        path: '/admin/disputes',
        builder: (context, state) => const DisputesScreen(),
      ),
      GoRoute(
        path: '/admin/categories',
        builder: (context, state) => const CategoriesScreen(),
      ),
      GoRoute(
        path: '/chat',
        builder: (context, state) => const ChatListScreen(),
      ),
      GoRoute(
        path: '/chat/:chatKey',
        builder: (context, state) => ChatRoomScreen(chatKey: state.pathParameters['chatKey']!),
      ),
      GoRoute(
        path: '/notifications',
        builder: (context, state) => const NotificationScreen(),
      ),
    ],
  );
  ref.onDispose(router.dispose);
  return router;
});