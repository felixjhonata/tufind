class UrlData {
  static const String host = "http://192.168.95.114:8080";

  static String getRegisterUrl() {
    return "$host/api/public/users/signup";
  }
}
