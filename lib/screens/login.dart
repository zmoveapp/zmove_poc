import 'package:flutter/material.dart';
import '../components/header-access.dart';
import '../components/input_text.dart';
import '../components/button.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
            child: Center(
                child: SingleChildScrollView(
                    // scroll de la pantalla
                    child: myColumn(node, formKey, emailCtrl, passwordCtrl)))));
  }
}

Column myColumn(node, formKey, emailCtrl, passwordCtrl) {
  return Column(
    children: [
      const HeaderAcceess(text: '¡Hola! 😊', image: 'images/Z1-BUCLE.gif'),
      const SizedBox(height: 50), // asignamos un espació de 50px
      Form(
          key: formKey,
          child: Column(
            children: [
              // InputComponent es un widget que yá está definido en diseño y solo solicita algunos parametros, dependiendo del uso que le demos
              emailImputBuilder(emailCtrl, node),
              passwordInputBuilder(passwordCtrl, node),
              // ButtonWhiteComponentOutlined es un widget Boton ya diseñado
              ButtonWhiteComponentOutlined(text: 'Iniciar Sesión', onPressed: () => {print('presionado')}),
              // ButtonWhiteComponent es un widget Boton ya diseñado
            ],
          )),
    ],
  );
}

InputComponent emailImputBuilder(emailCtrl, node) {
  return InputComponent(
    textInputAction: TextInputAction.next,
    controllerText: emailCtrl,
    onEditingComplete: () => node.nextFocus(),
    validator: (value) {
      if (value.contains('@') && value.contains('.')) {
        return null;
      } else {
        return 'Ingrese su correo';
      }
    },
    keyboardType: TextInputType.emailAddress,
    icon: Icons.person,
    labelText: "Correo",
  );
}

InputComponent passwordInputBuilder(passwordCtrl, node) {
  return InputComponent(
      textInputAction: TextInputAction.done,
      controllerText: passwordCtrl,
      onEditingComplete: () => node.nextFocus(),
      validator: (value) {
        if (value.isNotEmpty) {
          if (value.length >= 6) {
            return null;
          } else {
            return 'Debe tener un mínimo de 6 caracteres.';
          }
        } else {
          return 'Ingrese su contraseña';
        }
      },
      keyboardType: TextInputType.text,
      icon: Icons.lock,
      labelText: "Contraseña",
      obscureText: true);
}
