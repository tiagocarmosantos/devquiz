import 'package:devquiz/home/widgets/appBar/app_bar_widget.dart';
import 'package:devquiz/home/widgets/levelButton/level_button_widget.dart';
import 'package:devquiz/home/widgets/quizCard/quiz_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(children: [
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LevelButtonWidget(
                label: "Facil",
              ),
              LevelButtonWidget(
                label: "Medio",
              ),
              LevelButtonWidget(
                label: "Dificil",
              ),
              LevelButtonWidget(
                label: "Perito",
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Expanded(
            child: GridView.count(
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              crossAxisCount: 2,
              children: [
                QuizCardWidget(),
                QuizCardWidget(),
                QuizCardWidget(),
                QuizCardWidget(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
