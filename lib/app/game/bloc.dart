import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecase/content/game/read_all_game_use_case.dart';
import 'event.dart';
import 'state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  final ReadAllGameUseCase useCase;

  GameBloc({required this.useCase}) : super(const GameState()) {
    on<GetGamesEvent>(_getGamesEvent);
  }

  Future<void> _getGamesEvent(
    GetGamesEvent event,
    Emitter<GameState> emit,
  ) async {
    emit(state.copy(refreshing: true));
    final result = await useCase.readAll(page: 0);

    await result.fold(
      (error) {
        emit(state.copy(refreshing: false));
      },
      (stream) async {
        emit(state.copy(refreshing: false, games: stream));
      },
    );
  }
}
