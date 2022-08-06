import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nawras_dashboard/screens/home/home_screen.dart';
import 'package:nawras_dashboard/utils/color_constants.dart';
import 'package:nawras_dashboard/utils/text_style.dart';

class Login extends StatefulWidget {
  Login({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'User Name',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );

    final loginButton = Container(
      color: PaletteColors.mainAppColor,
      width: MediaQuery.of(context).size.width / 2.5,
      child: OutlinedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
//        padding: EdgeInsets.all(12),
//        color: PaletteColors.mainAppColor,
        child: Text('Log In',
            style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
    );

    final forgotLabel = OutlinedButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                color: PaletteColors.mainAppColor,
              ),
            ],
          ),
          Center(
            child: Card(
              elevation: 2.0,
              child: Container(
                padding: EdgeInsets.all(42),
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height / 1.5,
                child: Column(
                  children: <Widget>[
                    //SizedBox(height: 62.0),
                    Center(
                        child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "data:image/jpeg;base64,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",
                          fit: BoxFit.cover,
                          scale: 2,
                        ),
                        Text(
                          "Nawras Group \n Admin Panel",
                          style: AppTextStyle.boldTitle22
                              .copyWith(color: PaletteColors.mainAppColor),
                        )
                      ],
                    )),
                    SizedBox(height: 48.0),
                    email,
                    SizedBox(height: 8.0),
                    password,
                    SizedBox(height: 24.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Checkbox(
                              value: isChecked,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value;
                                });
                              },
                            ),
                            Text("Remember Me")
                          ],
                        ),
                        forgotLabel,
                      ],
                    ),
                    SizedBox(height: 18.0),
                    loginButton,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
