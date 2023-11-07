import 'package:flutter/material.dart';
import 'package:login/view/sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isValidate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 300,
                padding: const EdgeInsets.all(35),
                child: Image.asset(
                  'assets/images/logo_senac.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 250,
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            const SizedBox(
              width: 350,
              child: Text(
                'Seja Bem Vindo!',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 25,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  labelText: 'Email',
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                ),
              ),
            ),
            //opcao de preencher a senha
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                obscureText: isValidate,
                decoration: InputDecoration(
                  isDense: true,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  labelText: 'Senha',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isValidate = !isValidate;
                      });
                    },
                    icon: const Icon(Icons.visibility),
                  ),
                  prefixIcon: const Icon(
                    Icons.lock,
                  ),
                ),
              ),
            ),
            //botao de esqueci a senha
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Cliquei aqui'),
                    backgroundColor: Colors.red,
                  ),
                );
              },
              child: const Text('Esqueceu sua senha?'),
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
                onPressed: () {},
                child: const Text(
                  'Entrar',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 50,
              width: 350,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const SignUp()),
                  );
                },
                child: const Text(
                  'Novo Cadastro',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
