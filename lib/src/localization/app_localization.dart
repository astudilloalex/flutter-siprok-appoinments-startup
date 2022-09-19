import 'package:get/get.dart';
import 'package:siprok_appointments/src/localization/languages/app_es_ec.dart';

/// Contains information about languages.
class AppLocalization implements Translations {
  /// Define a [AppLocalization] class.
  const AppLocalization();

  @override
  Map<String, Map<String, String>> get keys {
    return {
      'es_EC': appEsEc,
    };
  }
}
