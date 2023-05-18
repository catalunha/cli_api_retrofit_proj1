import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/info_model.dart';

part 'info_retrofit_datasource.g.dart';

@RestApi(baseUrl: 'http://localhost:8080/')
abstract class InfoRetrofitDataSource {
  factory InfoRetrofitDataSource(Dio dio, {String baseUrl}) =
      _InfoRetrofitDataSource;

  @GET('/infos')
  Future<List<InfoModel>> get();
  @GET('/infos/{id}')
  Future<InfoModel> getId(@Path('id') String id);
  @POST('/infos')
  Future<void> post(@Body() InfoModel model);
  @PUT("/infos/{id}")
  Future<InfoModel> put(@Path() String id, @Body() InfoModel model);
  @PUT("/infos/{id}")
  Future<InfoModel> patch(@Path() String id, @Body() Map<String, dynamic> map);
  @DELETE("/infos/{id}")
  Future<void> delete(@Path() String id);
}
