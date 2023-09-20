import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/app_icons.dart';
import 'package:flutter_application_1/config/app_routes.dart';
import 'package:flutter_application_1/config/app_strings.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height:
              MediaQuery.of(context).size.height, //Lấy chiều cao của điện thoại
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(children: [
              Spacer(),
              const Text(
                AppStrings.helloWelcome,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                AppStrings.loginToContinue,
                style: TextStyle(color: Colors.white),
              ),
              Spacer(),
              TextField(
                decoration: InputDecoration(
                    hintText: 'UserName',
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)))),
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'UserName',
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)))),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {
                      print('flutter!');
                    },
                    style: TextButton.styleFrom(foregroundColor: Colors.white),
                    child: const Text(AppStrings.forgotPassword)),
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber[500],
                        foregroundColor: Colors.black),
                    onPressed: () {
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) {
                      //   return HomePage();
                      // }));
                      Navigator.of(context).pushReplacementNamed(AppRoutes
                          .main); //pushReplacementNamed không có nút quay lại
                    },
                    child: const Text(AppStrings.login)),
              ),
              Spacer(),
              const Text(
                AppStrings.orSignInWith,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 48,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/google.png',
                          width: 22,
                          height: 22,
                        ),
                        SizedBox(width: 10),
                        const Text(AppStrings.loginWithGoogle)
                      ],
                    )),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 48,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppIcons.ic_facebook,
                          width: 22,
                          height: 22,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        const Text(AppStrings.loginWithFacebook)
                      ],
                    )),
              ),
              Row(
                children: [
                  const Text(
                    AppStrings.dontHaveAccount,
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                      onPressed: () {},
                      style:
                          TextButton.styleFrom(foregroundColor: Colors.amber),
                      child: const Text(
                        AppStrings.signup,
                        style: TextStyle(decoration: TextDecoration.underline),
                      ))
                ],
              ),
              Spacer()
            ]),
          ),
        ),
      ),
    );
  }
}
