import 'package:flutter/material.dart';
import 'package:flutter_application_2/tema/app_botton_style.dart';
import 'package:flutter_application_2/widgets/main_screen/main_screen_widget.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login to your account'),
      ),
      body: ListView(
        children: [
          _HeaderWidget(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(
      fontSize: 16,
      color: Colors.black,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 25),
          FormWidget(),
          const SizedBox(height: 25),
          Text(
            'Thank you very much, Alexander I m very happy to continue discussing the app development here, if that works for you and the team In terms of the Trello board, I ve been checking it periodically, but please feel free to tag me in anything that the team has questions on or anythi g that needs to be further clarified I d always love to receive any updated builds through TestFlight, please, as it will allow us to fully get a sense of the current state of the project Thank you again',
            style: textStyle,
          ),
          const SizedBox(height: 5),
          TextButton(
            // Тип
            onPressed: () {},
            style: AppButtonStyle.linkButton, // стиль
            child: const Text('Register'),
          ),
          const SizedBox(height: 25),
          Text(
            'Anything that can be done to reduce the hours while still maintaining the functionality we’re aiming for would be sincerely appreciated',
            style: textStyle,
          ),
          const SizedBox(height: 5),
          TextButton(
            onPressed: () {},
            style: AppButtonStyle.linkButton,
            child: const Text('Verify email'),
          ),
        ],
      ),
    );
  }
}

class FormWidget extends StatefulWidget {
 const  FormWidget({Key? key}) : super(key: key);

  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _loginTextController = TextEditingController(text: 'admin');
  final _passwordTextController = TextEditingController(text: 'admin');
  String? errorText = null;

  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    if (login == 'admin' && password == 'admin') {
      errorText = null;

      // Navigator.of(context).pushNamed('/main_screen');// могу вернутся
      Navigator.of(context)
          .pushReplacementNamed('/main_screen'); // вернутся обратно не могу
    } else {
      errorText = 'Не верный логин или пароль';
    }
    setState(() {});
  }

  void _ressetPassword() {
    print('resset password');
  }

  @override
   Widget build(BuildContext context) {
    final textStyle = const TextStyle(
      fontSize: 16,
      color: Color(0xFF212529),
    ); 
    final color = const Color(0xFF01B4E4);
    final textFieldDecorator = const InputDecoration(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      isCollapsed: true,
    );
    final errorText = this.errorText;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (errorText != null) ...[
          // сприд опиратор если ошибка не ровна то возврашается из if мосиф с 2 элиментами
          Text(
            errorText,
            style: const TextStyle(
              fontSize: 17,
              color: Colors.red,
            ),
          ),
         const  SizedBox(height: 20),
        ],
        Text(
          'Username',
          style: textStyle,
        ),
      const   SizedBox(height: 5),
        TextField(
          controller: _loginTextController,
          decoration: textFieldDecorator,
        ),
      const   SizedBox(height: 20),
        Text(
          'Passeord',
          style: textStyle,
        ),
      const   SizedBox(height: 5),
        TextField(
          controller: _passwordTextController,
          decoration: textFieldDecorator,
          obscureText: true, // Звездочки
        ),
       const  SizedBox(height: 25),
        Row(
          children: [
            ElevatedButton(
              onPressed: _auth,
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(color), // цвет кнопки
                foregroundColor:
                    MaterialStateProperty.all(Colors.white), // цвет текста
                textStyle: MaterialStateProperty.all(
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 8,
                  ),
                ),
              ),
              child: const Text('Login'),
            ),
            SizedBox(width: 30),
            TextButton(
              onPressed: _ressetPassword,
              style: AppButtonStyle
                  .linkButton, // фаил app_botton_style.dart. Цвета
              child: const Text('Reset password'),
            ),
          ],
        )
      ],
    );
  }
}
