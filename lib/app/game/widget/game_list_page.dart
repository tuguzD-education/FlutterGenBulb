import 'package:flutter/material.dart';
import 'package:fluttergenbulb/app/game/widget/game_card.dart';
import 'package:get_it/get_it.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttergenbulb/app/game/bloc.dart';
import 'package:fluttergenbulb/app/game/event.dart';

import '../state.dart';

class GameListPage extends StatefulWidget {
  const GameListPage({super.key});

  @override
  State<GameListPage> createState() => _GameListState();
}

class _GameListState extends State<GameListPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.instance<GameBloc>()..add(GetGamesEvent()),
      child: Scaffold(
        appBar: AppBar(title: const Text("FlutterGenBulb")),
        body: BlocConsumer<GameBloc, GameState>(
          listener: (context, state) => {},
          builder: (context, state) => ListView.separated(
            padding: const EdgeInsets.all(16),
            itemBuilder: (context, index) =>
                GameCard(game: state.games.toIterable().elementAt(index)),
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemCount: state.games.length(),
          ),
        ),
      ),
    );
  }
}
