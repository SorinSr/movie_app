import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:movies_app/src/actions/index.dart';
import 'package:movies_app/src/model/app_state.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  bool _isLoading = false;
  bool _obscureText = true;

  void _onResult(AppAction action) {
    setState(() {
      _isLoading = false;
    });
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('${action.error}'),
      ));
    } else {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Card(
            elevation: 35,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: _email,
                      decoration: const InputDecoration(labelText: 'Email'),
                      keyboardType: TextInputType.emailAddress,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please insert a valid email address';
                        }
                        if (!value.contains('@') && !value.contains('.com')) {
                          return 'Please insert a valid email address';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _password,
                      decoration: InputDecoration(
                        labelText: 'password',
                        suffix: IconButton(
                          icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                          onPressed: () {
                            setState(() => _obscureText = !_obscureText);
                          },
                        ),
                      ),
                      obscureText: _obscureText,
                      keyboardType: TextInputType.visiblePassword,
                      validator: (String? value) {
                        if ((value == null || value.isEmpty) || (value.length < 6)) {
                          return 'Please insert a valid password';
                        }
                        return null;
                      },
                    ),
                    Builder(
                      builder: (BuildContext context) {
                        if (_isLoading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        return TextButton(
                          child: const Text('Login'),
                          onPressed: () {
                            if (!Form.of(context)!.validate()) {
                              return;
                            }
                            setState(() => _isLoading = true);
                            StoreProvider.of<AppState>(context)
                                .dispatch(Register(_email.text.trim(), _password.text.trim(), _onResult));
                          },
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
