/*
class ApiUrl {
  ApiUrl._();
  static String base = "http://10.0.60.26:8010";
  static String login() => "$base/auth/login";
  static String signUp() => "$base/auth/register";

  static String googleSearchApi({required String search}) =>
      'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$search';
  static String getProfile() => "$base/user/profile";
  static String getEditProfile(String userId) =>
      "$base/user/edit-profile/$userId";
  static String serviceScreen(
      {required String mainCategory,
      required String category,
      required String subCategory}) {
    return "$base/service/get-all-service?mainCategory=${Uri.encodeQueryComponent(mainCategory)}"
        "&category=${Uri.encodeQueryComponent(category)}&subCategory=${Uri.encodeQueryComponent(subCategory)}";
  }
}
*/
