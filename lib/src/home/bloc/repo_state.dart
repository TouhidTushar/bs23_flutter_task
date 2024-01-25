part of 'repo_cubit.dart';

abstract class RepoState extends Equatable {
  const RepoState();
}

class RepoInitial extends RepoState {
  @override
  List<Object> get props => [];
}

class RepoLoading extends RepoState {
  @override
  List<Object> get props => [];
}

class RepoLoaded extends RepoState {
  final RepoSearchResult result;

  const RepoLoaded(this.result);

  @override
  List<Object> get props => [result];
}

class RepoEmpty extends RepoState {
  @override
  List<Object> get props => [];
}

class RepoError extends RepoState {
  final String message;

  const RepoError(this.message);

  @override
  List<Object> get props => [message];
}
