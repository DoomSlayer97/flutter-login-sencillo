import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        child: Stack(
          children: [

            Container(
              width: size.width,
              height: size.height * 0.5,
              decoration: BoxDecoration(
                color: Colors.deepPurple
              ),
            ),

            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: size.height * 0.3,
                  bottom: 20
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      height: 340,
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            offset: Offset(0.0, 1.0),
                            color: Colors.grey,
                            spreadRadius: 0.4
                          )
                        ]
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                        child: Column(
                          children: [

                            Text("Login", 
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),

                            SizedBox(height: 35),

                            TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Enter your username",
                                labelText: "Username",
                                filled: true
                              ),
                            ),

                            SizedBox(height: 15),

                            TextField(
                              
                              decoration: InputDecoration(
                                labelText: "Password",
                                border: InputBorder.none,
                                hintText: "Enter your password",
                                filled: true
                              ),
                            ),

                            SizedBox(height: 40),

                            _botonEntrar(size)

                          ],
                        ),
                      )
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

  Container _botonEntrar(Size size) {
    return Container(
      height: 50,
      width: size.width * 0.55,
      child: RaisedButton(
        onPressed: () {

        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        padding: const EdgeInsets.all(0.0),
        child: Ink(
          decoration: const BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Container(
            constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
            alignment: Alignment.center,
            child: Text("Entrar", 
              style: TextStyle(
                fontSize: 15,
                color: Colors.white
              )
            )
          ),
        ),
      ),
    );
  }
}