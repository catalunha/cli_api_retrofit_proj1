import 'package:cli_api_retrofit_proj1/datasource/datasource.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/info_model.dart';

part 'info_retrofit_datasource.g.dart';

@RestApi(baseUrl: 'http://localhost:8080/')
abstract class InfoRetrofitDataSource extends DataSource {
  factory InfoRetrofitDataSource(Dio dio, {String baseUrl}) =
      _InfoRetrofitDataSource;

  @GET('/infos')
  @override
  Future<List<InfoModel>> get();
  @GET('/infos/{id}')
  @override
  Future<InfoModel> getId(@Path('id') String id);
  @POST('/infos')
  @override
  Future<void> post(@Body() InfoModel model);
  @PUT("/infos/{id}")
  @override
  Future<InfoModel> put(@Path() String id, @Body() InfoModel model);
  @PUT("/infos/{id}")
  @override
  Future<InfoModel> patch(@Path() String id, @Body() Map<String, dynamic> map);
  @DELETE("/infos/{id}")
  @override
  Future<void> delete(@Path() String id);
}
