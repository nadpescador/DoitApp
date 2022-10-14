import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabata/presentation/home_page/view/home_page.dart';
import 'package:tabata/presentation/login_page/bloc/login_bloc.dart';
import 'package:tabata/presentation/login_page/widgets/login_buttons.dart';
import 'package:tabata/presentation/login_page/widgets/login_inputs.dart';
import 'package:tabata/presentation/login_page/widgets/login_layout.dart';
import 'package:tabata/presentation/login_page/widgets/login_title.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({Key? key}) : super(key: key);

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: _listener,
      builder: (context, state) {
        return LoginLayout(
          child: state == LoginState.loading()
              ? _loading
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LoginTitle(
                      title: "Login with your user",
                      width: 200,
                    ),
                    LoginInputs(
                      usernameController: usernameController,
                      passwordController: passwordController,
                    ),
                    Expanded(
                      child: LoginButtons(
                        onLogin: () => context.read<LoginBloc>().add(
                              LoginEvent.attemptedLogin(
                                username: usernameController.text,
                                password: passwordController.text,
                              ),
                            ),
                      ),
                    ),
                  ],
                ),
        );
      },
    );
  }

  void _listener(BuildContext context, LoginState state) async {
    if (state == LoginState.error()) {
      showMessage(
        context,
        color: Colors.red,
        msg: "Wrong username or password",
      );
    } else if (state == LoginState.successful()) {
      Navigator.of(context).pushNamed(
        'home',
        arguments: usernameController.text,
      );
    }
  }

  Widget get _loading => const Center(
        child: CircularProgressIndicator(),
      );
}

void showMessage(
  BuildContext ctx, {
  required Color color,
  required String msg,
}) {
  ScaffoldMessenger.of(ctx).showSnackBar(
    SnackBar(
      backgroundColor: color,
      margin: EdgeInsets.all(20),
      behavior: SnackBarBehavior.floating,
      elevation: 10,
      content: Text(msg),
    ),
  );
}
