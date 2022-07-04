import 'package:app_ec/src/modules/post/domain/entities/stylesColorsEntities.dart';
import 'package:app_ec/src/modules/post/presenter/assets/images.dart';
import 'package:app_ec/src/modules/post/presenter/pages/EncarregadorHome.dart';
import 'package:app_ec/src/modules/post/presenter/pages/NovaSenha.dart';
import 'package:app_ec/src/modules/post/domain/entities/loginControllers.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  LoginWidgetState createState() => LoginWidgetState();
}

class LoginWidgetState extends State<LoginPage> {
  

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: LoginControllers.scaffoldKey,
      backgroundColor:branco,
      body: Form(
        key: LoginControllers.formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: const BoxDecoration(
            color:branco,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                child: imagemLogo,
                 
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                child: Text(
                  'Informe seus dados para acessar.',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: azul,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24, 50, 20, 5),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Login:',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: TextFormField(
                          controller: LoginControllers.textFieldLoginEmailController,
                          obscureText: false,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: azul,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: azul,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(0),
                            ),
                            filled: true,
                            fillColor: branco,
                            contentPadding:
                                const EdgeInsetsDirectional.fromSTEB(
                                    5, 5, 5, 5),
                          ),
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Senha:',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: TextFormField(
                          controller: LoginControllers.textFieldLoginSenhaController,
                          obscureText: LoginControllers.textFieldLoginVisibility,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.blue,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: azul,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(0),
                            ),
                            filled: true,
                            fillColor: branco,
                            contentPadding:
                                const EdgeInsetsDirectional.fromSTEB(
                                    5, 5, 5, 5),
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () => LoginControllers.textFieldLoginVisibility =
                                    LoginControllers.textFieldLoginVisibility,
                              ),
                              focusNode: FocusNode(skipTraversal: true),
                              child: Icon(
                                LoginControllers.textFieldLoginVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: cinza,
                                size: 22,
                              ),
                            ),
                          ),
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              40, 12, 40, 0),
                          primary: azulbebe,
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const EncarregadoHomePage()),
                          );
                        },
                        child: const Text('Logar'),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              40, 12, 40, 0),
                          primary: azulbebe,
                          textStyle: const TextStyle(fontSize: 12),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NovaSenhaPage()),
                          );
                        },
                        child: const Text('Esqueci minha senha'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/* Configurações do Botão 
Padding(
  padding:
      const EdgeInsetsDirectional.fromSTEB(40, 12, 40, 0),
  child: FFButtonWidget(
    onPressed: () async {
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              NavBarPage(initialPage: 'EncarregadoHome'),
        ),
      );
    },
    text: 'Logar como Encarregado',
    options: FFButtonOptions(
      width: 130,
      height: 40,
      color: FlutterFlowTheme.of(context).primaryColor,
      textStyle:
          FlutterFlowTheme.of(context).subtitle2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
      borderSide: const BorderSide(
        color: Colors.transparent,
        width: 1,
      ),
      borderRadius: 12,
    ),
  ),
), */