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
          child: Stack(
            children: [
              const Positioned(
                width: 300,
                height: 43,
                left: 61,
                top: 135,
                child: Text(
                  'Olá! Seja bem vindo!',
                  style: TextStyle(
                      fontFamily: 'Urbanest',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      height: 1.3,
                      color: Color(0xFF1E232C)),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const ETextField(
                      labelText: 'E-mail',
                      textInputAction: TextInputAction.next,
                      textValidator: 'E-mail não pode ser vazio',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const ETextField(
                      labelText: 'Senha',
                      textInputAction: TextInputAction.done,
                      textValidator: 'Senha não pode ser vazia',
                      obscureText: true,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16),
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
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
