import 'package:news_app/client/result/result.dart';

typedef ResultDecode<K, E extends Exception> = Future<Result<K, E>>;
typedef ResultResponse<Response, E extends Exception> = Future<Result<Response, E>>;
