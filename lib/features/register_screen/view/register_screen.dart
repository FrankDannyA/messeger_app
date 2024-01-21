import 'package:flutter/material.dart';
import 'package:messeger_app/features/main_screen/view/main_screen.dart';
import 'package:messeger_app/features/register_screen/view/widgets/main_text_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  final loginController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Align(
            alignment: const Alignment(0.0, -0.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                MainTextField(
                  textEditingController: loginController,
                  title: 'Почта',
                ),
                const SizedBox(height: 16),
                MainTextField(
                  textEditingController: passController,
                  title: 'Пароль',
                  isPass: true,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => MainScreen()));
                      },
                      child: const Text('Войти'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Регистрация'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
