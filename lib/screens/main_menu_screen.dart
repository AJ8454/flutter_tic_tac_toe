import 'package:flutter/material.dart';
import 'package:tictactoe/screens/create_room_screen.dart';
import 'package:tictactoe/screens/join_room_screen.dart';
import 'package:tictactoe/widgets/custom_button.dart';

class MainMenuScreen extends StatelessWidget {
  static String routeName = "/main-menu";
  const MainMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomButtom(
            onTap: () =>
                Navigator.pushNamed(context, CreateRoomScreen.routeName),
            title: "Create Room",
          ),
          CustomButtom(
            onTap: () => Navigator.pushNamed(context, JoinRoomScreen.routeName),
            title: "Join  Room",
          ),
        ],
      ),
    ));
  }
}
