import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/Repository/HomeScreen/HomeScreen.dart';

import '../../Controllers/LoginController.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var controller = Get.put(loginController());
  bool hidePassword = true;
  int selected = 0;

  void initState() {
    super.initState();
  }

  final TextEditingController emailTFC = TextEditingController();

  final TextEditingController passwordTFC = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 45),
                Container(
                  // margin: const EdgeInsets.only(left: 48),
                  child: const Text(
                    'Нэвтрэх',
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.blue,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'nunito',
                      //fontFamily: GoogleFonts.pacifico()
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Column(
                  children: [
                    TextFormField(
                      controller: emailTFC,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        labelText: 'И-мэйл',
                        hintText: 'Имэйл оруулна уу',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          Get.snackbar(
                              "Амжилтгүй", 'Дугаар болон имэйл оруулна уу');
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 25),
                    TextFormField(
                      controller: passwordTFC,
                      obscureText: hidePassword,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                              hidePassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.blue),
                          onPressed: () {
                            setState(() {
                              hidePassword = !hidePassword;
                            });
                          },
                        ),
                        labelText: 'Нууц үг',
                        hintText: 'Нууц үг оруулна уу',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          Get.snackbar("Амжилтгүй", "Нууц үг оруулна уу");
                        }
                        return null;
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.snackbar('Амжилтгүй', 'Тун удахгүй');
                      },
                      child: const Text(
                        'Нууц үг мартсан',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xffC4C8D3),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 60),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: const Size.fromHeight(45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState != null &&
                        _formKey.currentState!.validate()) {
                      // controller.loginButtonPressed(
                      //   emailTFC.text,
                      //   int.parse(passwordTFC.text),
                      // );
                      // Get.to(HomeScreen());
                      Get.to(() => const HomeScreen());
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Талбарыг бөглөнө үү!'),
                        ),
                      );
                    }
                  },
                  child: const Text(
                    'НЭВТРЭХ',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(height: 180),
        ),
      ),
    );
  }
}
