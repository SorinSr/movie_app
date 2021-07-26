part of actions;

@freezed
class GetMoviesActions with _$GetMoviesActions implements AppAction {
  const factory GetMoviesActions() = GetMoviesActionsStart;

  const factory GetMoviesActions.successful(List<Movie> movieList) = GetMoviesActionsSuccessful;

  @Implements(ErrorAction)
  const factory GetMoviesActions.error(Object error, StackTrace stackTrace) = GetMoviesActionsError;
}
