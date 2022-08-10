import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:umbrela_cash/src/shared/widgets/app_button.dart';
import 'package:umbrela_cash/src/shared/widgets/app_text_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 14,
              ),
              Image.asset('assets/img/login.png'),
              Center(
                child: Text(
                  'Olá irmão!',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              Center(
                child: Text(
                  'Entre com a sua conta',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        child: InputWidget(
                          label: 'Login',
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        height: 94,
                        child: InputWidget(
                          validator: (text) {
                            if (text!.length < 6 || text.isEmpty) {
                              return 'senha inválida';
                            }
                          },
                          label: 'Senha',
                          isPassword: true,
                        ),
                      ),
                      TextButton(
                        onPressed: () => print('textbutton'),
                        child: Text(
                          'Esqueceu a senha?',
                          style: Theme.of(context).textTheme.overline,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: SizedBox(
                          width: maxWidth / 2,
                          height: 52,
                          child: AppButton(
                            label: 'ENTRAR',
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                debugPrint('sucesso');
                                context.go('/');
                              }
                            },
                          ),
                        ),
                      ),
                      const Text('Ou entre utilizando:'),
                      const SizedBox(
                        height: 14,
                      ),
                      SizedBox(
                        width: maxWidth / 2,
                        height: 52,
                        child: AppButton(
                            icon: Image.asset(
                              'assets/img/google_icon.png',
                              height: 32,
                              width: 32,
                            ),
                            onPressed: () => print('login with google'),
                            label: 'Google'),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      GestureDetector(
                        onTap: () {
                          print('criar conta');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Não tem uma conta? ',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            Text(
                              'Crie!',
                              style: Theme.of(context).textTheme.overline,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
