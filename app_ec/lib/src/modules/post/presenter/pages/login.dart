import 'package:app_ec/src/modules/post/presenter/pages/EncarregadorHome.dart';
import 'package:app_ec/src/modules/post/presenter/pages/NovaSenha.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  LoginWidgetState createState() => LoginWidgetState();
}

class LoginWidgetState extends State<LoginPage> {
  late TextEditingController textFieldLoginEmailController;
  late TextEditingController textFieldLoginSenhaController;
  late bool textFieldLoginVisibility;

  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textFieldLoginEmailController = TextEditingController();
    textFieldLoginSenhaController = TextEditingController();
    textFieldLoginVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFFF5F5F5),
      body: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: const BoxDecoration(
            color: Color(0xFFEEEEEE),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                child: Image.network(
                  'https://www2.santoandre.sp.gov.br/images/logos-sec/Logo_5_-_2017-SemSlogan.png',
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  fit: BoxFit.fitHeight,
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                child: Text(
                  'Informe seus dados para acessar.',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: Colors.blue,
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
                          controller: textFieldLoginEmailController,
                          obscureText: false,
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
                                color: Colors.blue,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFFE2DEDE),
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
                          controller: textFieldLoginSenhaController,
                          obscureText: !textFieldLoginVisibility,
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
                                color: Colors.blue,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFFE2DEDE),
                            contentPadding:
                                const EdgeInsetsDirectional.fromSTEB(
                                    5, 5, 5, 5),
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () => textFieldLoginVisibility =
                                    !textFieldLoginVisibility,
                              ),
                              focusNode: FocusNode(skipTraversal: true),
                              child: Icon(
                                textFieldLoginVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: const Color(0xFF757575),
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
                          primary: Colors.blue[400],
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
                          primary: Colors.blue[400],
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