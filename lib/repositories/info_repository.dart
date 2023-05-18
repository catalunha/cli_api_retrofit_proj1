// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cli_api_retrofit_proj1/repositories/repository.dart';

import '../datasource/info_retrofit_datasource.dart';
import '../models/info_model.dart';

class InfoRepository extends Repository {
  final InfoRetrofitDataSource infoRetrofitDataSource;
  InfoRepository({
    required this.infoRetrofitDataSource,
  });

  @override
  Future<List<InfoModel>> get() => infoRetrofitDataSource.get();
  @override
  Future<InfoModel> getId(String id) => infoRetrofitDataSource.getId(id);
  @override
  Future<void> post(InfoModel model) => infoRetrofitDataSource.post(model);
  @override
  Future<void> put(String id, InfoModel model) =>
      infoRetrofitDataSource.put(id, model);
  @override
  Future<void> patch(String id, map) => infoRetrofitDataSource.patch(id, map);
  @override
  Future<void> delete(String id) => infoRetrofitDataSource.delete(id);
}
