import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:retrofit/retrofit.dart';
import 'package:compedia/data/remote/interceptor/dio_model.dart';

part 'api_services.g.dart';

@RestApi()
abstract class ClientServices {
  factory ClientServices(Dio dio, {String baseUrl}) = _ClientServices;

  static Future<ClientServices> create({
    Map<String, dynamic> headers = const {},
    int connectTimeout = 30000,
    int receiveTimeout = 30000,
  }) async {
    return ClientServices(
      await DioModel().getDIO(
        connectTimeout: connectTimeout,
        receiveTimeout: receiveTimeout,
      ),
      baseUrl: dotenv.env['API_URL'].toString(),
    );
  }

  // @POST('/auth/login')
  // Future<User> login(
  //   @CancelRequest() CancelToken cancelToken,
  //   @Field("username") String username,
  //   @Field("password") String password,
  // );

  // @GET('/posts')
  // Future<ResponsePost> getAllPost(
  //   @CancelRequest() CancelToken cancelToken,
  // );
}

const createClient = ClientServices.create;
