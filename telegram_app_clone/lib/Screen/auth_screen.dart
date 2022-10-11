import 'package:flutter/material.dart';
import 'package:telegram_app_clone/Screen/telegram_main.dart';

enum AuthMode { Signup, Login }

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);
  static const routeName = '/authentication-screen';
  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  AuthMode _authMode = AuthMode.Login;
  final Map<String, String> _authData = {
    'email': '',
    'password': '',
  };
  var _isLoading = false;
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();

  void _submit() {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();
    setState(() {
      _isLoading = true;
    });
    if (_authMode == AuthMode.Login) {
    } else {}
    setState(() {
      _isLoading = false;
    });
  }

  void _switchAuthMode() {
    if (_authMode == AuthMode.Login) {
      setState(() {
        _authMode = AuthMode.Signup;
      });
    } else {
      setState(() {
        _authMode = AuthMode.Login;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromRGBO(215, 117, 255, 1).withOpacity(0.5),
              const Color.fromRGBO(255, 188, 117, 1).withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [0, 1],
          ),
        ),
        child: Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 10,
            child: Container(
              height: _authMode == AuthMode.Signup ? 320 : 260,
              constraints: BoxConstraints(
                minHeight: _authMode == AuthMode.Signup ? 320 : 260,
              ),
              width: deviceSize.width * 0.75,
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: const InputDecoration(labelText: 'Email'),
                        keyboardType: TextInputType.emailAddress,
                        controller: _emailController,
                        validator: (value) {
                          if (value!.isEmpty || !value.contains('@')) {
                            return 'Invalid email';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _authData['email'] = value!;
                        },
                      ),
                      TextFormField(
                        decoration:
                            const InputDecoration(labelText: 'Password'),
                        obscureText: true,
                        controller: _passwordController,
                        validator: (value) {
                          if (value!.isEmpty || value.length < 5) {
                            return 'Password is too short';
                          }
                        },
                        onSaved: (value) {
                          _authData['password'] = value!;
                        },
                      ),
                      if (_authMode == AuthMode.Signup)
                        TextFormField(
                          enabled: _authMode == AuthMode.Signup,
                          decoration: const InputDecoration(
                              labelText: 'Confirm Password'),
                          obscureText: true,
                          validator: _authMode == AuthMode.Signup
                              ? (value) {
                                  if (value! != _passwordController.text) {
                                    return 'Password don\'t much!';
                                  }
                                }
                              : null,
                        ),
                      const SizedBox(
                        height: 20,
                      ),
                      if (_isLoading)
                        const CircularProgressIndicator()
                      else
                        ElevatedButton(
                          onPressed: () =>
                              _passwordController.text == '12345678' &&
                                      _emailController.text == 'jossy@gmail.com'
                                  ? Navigator.of(context)
                                      .pushNamed(TelegramMain.routeName)
                                  : null,
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30.0,
                              vertical: 8.0,
                            ),
                            primary: Theme.of(context).primaryColor,
                            textStyle: const TextStyle(color: Colors.white),
                          ),
                          child: Text(
                            _authMode == AuthMode.Login ? 'LOGIN' : 'SIGN UP',
                          ),
                        ),
                      TextButton(
                        onPressed: _switchAuthMode,
                        style: TextButton.styleFrom(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30.0,
                            vertical: 4,
                          ),
                          textStyle:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                        child: Text(
                            '${_authMode == AuthMode.Login ? 'SIGNUP' : 'LOGIN'} INSTEAD'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
