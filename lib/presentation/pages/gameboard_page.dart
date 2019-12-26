import 'package:dependencies/dependencies.dart';
import 'package:dependencies_flutter/dependencies_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triviados/presentation/bloc/gameboard_bloc.dart';
import 'package:triviados/presentation/bloc/gameboard_event.dart';
import 'package:triviados/presentation/bloc/gameboard_state.dart';
import 'package:triviados/presentation/widgets/PrimaryButton.dart';
import 'package:triviados/presentation/widgets/home_widget.dart';
import 'package:triviados/presentation/widgets/question_page.dart';

class GameBoardPage extends StatefulWidget {
  GameBoardPage({Key key}) : super(key: key);

  @override
  _GameBoardPageState createState() => _GameBoardPageState();
}

class _GameBoardPageState extends State<GameBoardPage> with InjectorWidgetMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget buildWithInjector(BuildContext context, Injector injector) {
    GameBoardBloc _bloc = GameBoardBloc(injector.get());
    return Scaffold(
      body: buildBody(_bloc),
    );
  }

  Widget buildBody(GameBoardBloc bloc) {
    return Scaffold(
      body: BlocBuilder(
        bloc: bloc,
        builder: (context, state) {
          if (state is InitialState) {
            return HomeWidget(
              onStart: () => bloc.add(PlayEvent()),
            );
          }

          if (state is LoadingState) {
            return Center(child: CircularProgressIndicator());
          }

          if (state is TriviasLoaded) {
            bloc.add(NextQuestionEvent());
          }

          if (state is AnswerSelected || state is ShowTrivia) {
            return Column(
              children: <Widget>[
                Expanded(
                  child: QuestionPage(trivia: state.trivia, onOptionSelected: (option) => bloc.add(OptionSelectedEvent(option))),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 48.0),
                  child: PrimaryButton(
                      text: "Next", onPressed: state is AnswerSelected ? () => bloc.add(NextQuestionEvent()) : null),
                ),
              ],
            );
          }

          if (state is GameFinished) {
            return Center(child: Text("${state.score}/100"));
          }

          return Center();
        },
      ),
    );
  }
}
