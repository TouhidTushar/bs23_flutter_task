import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:bs23_flutter_task/services/repo_service.dart';
import 'package:bs23_flutter_task/src/home/model/repo_search_result_model.dart';

part 'repo_state.dart';

class RepoCubit extends Cubit<RepoState> {
  RepoCubit() : super(RepoInitial());

  final _repoService = RepoService();

  void searchRepositories(String q, int page, int perPage) async {
    emit(RepoLoading());

    final RepoSearchResult? result =
        await _repoService.searchRepositories(q, page, perPage);

    if (result == null) {
      emit(const RepoError('Something went wrong!'));
    } else if ((result.items ?? []).isEmpty) {
      emit(RepoEmpty());
    } else {
      emit(RepoLoaded(result));
    }
  }
}
