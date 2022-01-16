import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_code_generation/modules/design_patterns/models/models.dart';
import 'package:flutter_code_generation/modules/design_patterns/repositories/repositories.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
