import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/models.dart';
import '../repositories/design_patterns_repository.dart';

part 'design_patterns_cubit.freezed.dart';
part 'design_patterns_state.dart';

class DesignPatternsCubit extends Cubit<DesignPatternsState> {
  final DesignPatternsRepository repository;

  DesignPatternsCubit({
    required this.repository,
  }) : super(const DesignPatternsState.initial());

  Future<void> load() async {
    emit(const DesignPatternsState.loadInProgress());

    try {
      final categories = await repository.getCategories();

      emit(DesignPatternsState.loadSuccess(categories: categories));
    } on DesignPatternsJsonNotFoundException {
      emit(const DesignPatternsState.loadFailure());
    }
  }
}
