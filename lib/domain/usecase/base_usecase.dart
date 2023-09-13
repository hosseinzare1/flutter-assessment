abstract class BaseUseCase<Params, Result> {
  Future<Result> call(Params params);
}
