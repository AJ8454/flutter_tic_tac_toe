import 'package:flutter/material.dart';
import 'package:tictactoe/responsive/responsive.dart';
import 'package:tictactoe/widgets/custom_button.dart';
import 'package:tictactoe/widgets/custom_text.dart';
import 'package:tictactoe/widgets/custom_textfield.dart';

class JoinRoomScreen extends StatefulWidget {
  static String routeName = "/join-room";
  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _gameIdontroller = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _gameIdontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Responsive(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomText(
                shadows: [
                  BoxShadow(
                    blurRadius: 40,
                    color: Colors.blue,
                  )
                ],
                text: "Join Room",
                fontsize: 70,
              ),
              SizedBox(height: size.height * 0.08),
              CustomTextField(
                controller: _nameController,
                hintText: "Enter your nickname",
              ),
              SizedBox(height: size.height * 0.04),
              CustomTextField(
                controller: _gameIdontroller,
                hintText: "Enter Game ID",
              ),
              SizedBox(height: size.height * 0.045),
              SizedBox(
                width: size.width * 0.2,
                child: CustomButtom(
                  onTap: () {},
                  title: "Create",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
