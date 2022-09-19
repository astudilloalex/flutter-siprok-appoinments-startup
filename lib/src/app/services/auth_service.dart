import 'package:get/get.dart';

/// Service for authentication.
class AuthService extends GetxService {
  Future<AuthService> init() async {
    return this;
  }

  bool get authenticated => true;
}
