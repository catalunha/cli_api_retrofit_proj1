import 'package:args/command_runner.dart';
import 'package:cli_api_retrofit_proj1/datasource/info_retrofit_datasource.dart';
import 'package:dio/dio.dart';

import '../../repositories/info_repository.dart';
import '../../repositories/repository.dart';
import 'subcmds/infos_delete_subcmd.dart';
import 'subcmds/infos_get_id_subcmd.dart';
import 'subcmds/infos_get_subcmd.dart';
import 'subcmds/infos_patch_subcmd.dart';
import 'subcmds/infos_post_subcmd.dart';
import 'subcmds/infos_put_subcmd.dart';

class InfosCommand extends Command {
  @override
  String get name => 'infos';
  @override
  String get description => 'Infos Operations';

  InfosCommand() {
    try {
      // final DataSource dataSource = InfoDio();
      final InfoRetrofitDataSource infoRetrofitDataSource =
          InfoRetrofitDataSource(Dio());
      // final DataSource infoRetrofit = InfoRetrofit(Dio()) as DataSource;
      final Repository repository =
          InfoRepository(infoRetrofitDataSource: infoRetrofitDataSource);
      addSubcommand(InfosGetSubcommand(
        repository: repository,
      ));
      addSubcommand(InfosGetIdSubcommand(
        repository: repository,
      ));
      addSubcommand(InfosPostSubcommand(
        repository: repository,
      ));
      addSubcommand(InfosPutSubcommand(
        repository: repository,
      ));
      addSubcommand(InfosPatchSubcommand(
        repository: repository,
      ));
      addSubcommand(InfosDeleteSubcommand(
        repository: repository,
      ));
    } catch (e, s) {
      print('Infos SubComandos com erro. Veja -h');
      print(e);
      print(s);
    }
  }
}
