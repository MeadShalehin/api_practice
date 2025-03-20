import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'hello': 'Hello',
      'message': 'Messages',
    },
    'bn_BD': {
      'hello': 'হ্যালো',
      'message': 'বার্তা',
    },
  };
}
