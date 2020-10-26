import 'package:flutter/material.dart';
import 'package:comida/screens/loggin.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 230, 239),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          backgroundColor: Color(0xfff44336),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    child: Image(image: AssetImage('assets/images/login.png')),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 35.0, 0.0, 0.0),
                    child: Text(
                      'Ingresa tus credenciales' +
                          '\n' +
                          'Registradas para acceder',
                      style: TextStyle(
                        color: Color(0xfff472212),
                        fontSize: 24.0,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Correo o Usuario',
                            icon: Icon(
                              Icons.mail,
                              color: Colors.black,
                              size: 30,
                            )),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: TextField(
                        obscureText: true,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                            labelText: 'Contraseña',
                            icon: Icon(
                              Icons.lock,
                              color: Colors.black,
                              size: 30,
                            )),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '¿Aún no tienes cuenta?',
                      style: TextStyle(
                        color: Color(0xff7C7A7A),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Loggin()));
                      },
                      child: Text(
                        'Crear Ahora',
                        style: TextStyle(
                          color: Color(0xfff54647),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xfff44336).withOpacity(0.9),
                          borderRadius: BorderRadius.circular(15)),
                      width: 320,
                      height: 65,
                      margin: EdgeInsets.only(top: 50),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Loggin()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'CONTINUAR',
                            style: TextStyle(
                              fontSize: 25,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
