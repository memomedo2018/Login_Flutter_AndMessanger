import 'package:flutter/material.dart';
import 'package:login/screens/messanger.dart';
import 'package:login/widgets/textfileds.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFileds("email", email),
                  SizedBox(
                    height: 20,
                  ),
                  TextFileds("password", password),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    child: MaterialButton(
                        onPressed: () {
                          print('${email.text} ,  ${password.text}');
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Messenger()));
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(color: Colors.white),
                        )),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account'),
                      TextButton(
                          onLongPress: () {
                            print("object");
                          },
                          onPressed: () {
                            print("o_bject");
                          },
                          child: Text(
                            'Register Now',
                            style: TextStyle(color: Colors.blue),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
