import 'package:news_app/client/network/builder/network_manager.dart';

class NetworkClient {
  static NetworkManager client() {
    return NetworkManager(
      authToken: null,
      isLog: true,
      isReleaseURL: true,
      releaseBaseURL: "https://newsapi.org/v2",
      testBaseURL: "https://newsapi.org/v2",
    );
  }
}
