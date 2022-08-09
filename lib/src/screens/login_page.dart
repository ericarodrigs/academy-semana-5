import 'package:flutter/material.dart';
import '../design_system/atoms/e_elevated_button.dart';
import '../design_system/atoms/e_text_field.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/login';

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: formKey,
          child: Container(
            margin: const EdgeInsets.only(top: 135, left: 24, right: 24),
            child: Column(
              children: [
                const Text(
                  'Olá! Seja bem vindo!',
                  style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      height: 1.3,
                      letterSpacing: -0.01,
                      color: Color(0xFF1E232C)),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 90),
                  child: const ETextField(
                    labelText: 'Digite seu email',
                    textInputAction: TextInputAction.next,
                    textValidator: 'E-mail não pode ser vazio',
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 27),
                  child: const ETextField(
                    labelText: 'Digite sua senha',
                    textInputAction: TextInputAction.done,
                    textValidator: 'Senha não pode ser vazia',
                    obscureText: true,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 35),
                  child: EElevatedButton(
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          debugPrint('cadastro realizado');
                          await Navigator.of(context)
                                  .pushReplacementNamed('/home') ??
                              false;
                        } else {
                          debugPrint(
                              'erro ao cadastrar, verifique os campos e tente novamente');
                        }
                      },
                      color: const Color(0xFF1E232C),
                      text: 'Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
