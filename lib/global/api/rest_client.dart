import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:bs23_flutter_task/src/home/model/repo_search_result_model.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "https://api.github.com")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/search/repositories")
  Future<RepoSearchResult> searchRepositories(
    @Query("q") String query,
    @Query("page") int page,
    @Query("per_page") int perPage,
  );
}
