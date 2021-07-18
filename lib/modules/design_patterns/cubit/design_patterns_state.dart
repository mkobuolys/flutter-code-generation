part of 'design_patterns_cubit.dart';

@freezed
class DesignPatternsState with _$DesignPatternsState {
  const factory DesignPatternsState.initial() = _DesignPatternsStateInitial;
  const factory DesignPatternsState.loadInProgress() =
      _DesignPatternsStateLoadInProgress;
  const factory DesignPatternsState.loadSuccess({
    required List<DesignPatternsCategory> categories,
  }) = _DesignPatternsStateLoadSuccess;
  const factory DesignPatternsState.loadFailure() =
      _DesignPatternsStateLoadFailure;
}
