import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().whenComplete(() {
    print('Completou');
  });
  FirebaseAuth auth = FirebaseAuth.instance;

  String email = "johnkeven@gmail.com";
  String senha = '123456';

  /* criar usuario com email e senha
  auth.createUserWithEmailAndPassword(email: email,
    password: senha).then((firebaseUser) {
      print('Usuario cadastrado com Sucesso! Email:  $email');
  }).catchError((erro){
      print('Erro: $erro');
  });
  */
  /* usuário logado
  var usuarioAtual = await auth.currentUser;
  if (usuarioAtual != null){
    print('Logado ${usuarioAtual.email}');
  } else {
    print('Deslogado');
  }
  */
  // auth.signOut(); Desloga usuário
  /* Login com email e senha
  auth.signInWithEmailAndPassword(email: email, password: senha)
  .then((firebaseUser) {
    print('Login efetuado com sucesso ${firebaseUser.user!.email}'); //aqui ja poderia mandar o usuario pra home
  }).catchError((error){
    print('Erro ao efetuar login: $error');
  }); 
  */
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

