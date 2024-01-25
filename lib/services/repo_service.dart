import 'dart:developer';

import 'package:bs23_flutter_task/global/api/dio_config.dart';
import 'package:bs23_flutter_task/global/api/rest_client.dart';
import 'package:bs23_flutter_task/src/home/model/repo_search_result_model.dart';

class RepoService {
  final dio = DioConfig.load();

  Future<RepoSearchResult?> searchRepositories(
      String query, int page, int perPage) async {
    try {
      final client = RestClient(dio);
      final RepoSearchResult result =
          await client.searchRepositories(query, page, perPage);
      return result;
    } catch (e) {
      log('RepoService.searchRepositories: $e', name: 'RepoService');
      return null;
    }
  }
}
