import 'package:cryptohub/core/di/injection.dart';
import 'package:cryptohub/features/auth/core/di/login_di.dart';
import 'package:cryptohub/features/home/core/di/home_di.dart';
import 'package:cryptohub/features/profile/core/profile_di.dart';

void appInitialDependencies() {
  setupDependencies();
  loginSetUpDependencies();
  homeSetUpDependencies();
  profileSetUpDependencies();
}
