import 'package:flutter/material.dart';

import '../styleguide.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  final _loginFormKey = GlobalKey<FormState>();
  AnimationController _animationController;
  Animation<double> _animation;
  bool _isLoggedIn = false;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 1000,
      ),
    );

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeIn,
    )..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  void updateAnimation(double dx) {
    _animationController.value += dx / MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..translate(250.0 * _animationController.value)
        ..rotateY(1 * _animationController.value)
        ..scale(1 - 0.2 * _animationController.value),
      alignment: FractionalOffset.center,
      child: GestureDetector(
        onPanUpdate: (pan) {
          updateAnimation(pan.delta.dx);
        },
        onPanEnd: (_) {
          if (_isLoggedIn) {
            _animationController.forward();
          } else {
            _animationController.reverse();
          }
        },
        child: Stack(
          children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 30.0,
                    spreadRadius: 5.0,
                  )
                ],
              ),
              child: Image(
                image: AssetImage('assets/images/login_background.jpg'),
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Form(
              key: _loginFormKey,
              child: Container(
                child: Wrap(
                  verticalDirection: VerticalDirection.up,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      height: MediaQuery.of(context).size.height * .1,
                      child: Center(
                        child: FlatButton(
                          textColor: Colors.grey,
                          onPressed: () {},
                          child: Text(
                            "Create new account".toUpperCase(),
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      height: MediaQuery.of(context).size.height * .10,
                      child: Center(
                        child: SizedBox(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * .055,
                          child: RaisedButton(
                            textColor: Colors.white,
                            color: Color(0xFF4F99E3),
                            onPressed: () {
                              if (_loginFormKey.currentState.validate()) {
                                _isLoggedIn = true;
                                FocusScope.of(context)
                                    .requestFocus(FocusNode());
                                _animationController.forward();
                              }
                            },
                            child: Text(
                              "login".toUpperCase(),
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .15,
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Center(
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                          decoration: inputDecoration.copyWith(
                              suffixIcon: Icon(
                                Icons.lock_outline,
                                color: Colors.white,
                                size: 25,
                              ),
                              labelText: "Password"),
                          style: const TextStyle(
                            letterSpacing: 7,
                            color: Colors.white,
                          ),
                          cursorColor: Colors.white,
                          obscureText: true,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Center(
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter your username';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: inputDecoration,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          cursorColor: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          "Exploring\nworld".toUpperCase(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            height: 1.5,
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      height: MediaQuery.of(context).size.height * .5,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
