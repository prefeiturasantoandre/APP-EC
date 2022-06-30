import 'package:flutter/material.dart';

class NovaSenhaPage extends StatefulWidget {
  const NovaSenhaPage({Key? key}) : super(key: key);

  @override
  NovaSenhaWidgetState createState() => NovaSenhaWidgetState();
}

class NovaSenhaWidgetState extends State<NovaSenhaPage> {
  late TextEditingController textFieldNovaSenhaEmailController;

  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textFieldNovaSenhaEmailController = TextEditingController();
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
                padding: EdgeInsetsDirectional.fromSTEB(20, 200, 20, 0),
                child: Text(
                  'Insira o endereço de e-mail associado à sua conta do App EC.',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    color: Colors.blue,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24, 30, 20, 5),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'E-mail:',
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
                          controller: textFieldNovaSenhaEmailController,
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
                          Navigator.pop(context);
                        },
                        child: const Text('Enviar nova senha'),
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
