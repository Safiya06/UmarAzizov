// import 'package:flutter/material.dart';
// import 'package:umar_azizov/components/app_botton.dart';
// import 'package:umar_azizov/components/custom_textField.dart';
// import 'package:umar_azizov/screens/confirm_screen.dart';
// import 'package:umar_azizov/screens/forgot_password_screen.dart';
// import 'package:umar_azizov/screens/register_screen.dart';

//   //final _formKey = GlobalKey<FormState>();
// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen>
//     with SingleTickerProviderStateMixin {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final TextEditingController phoneController = TextEditingController();
  
//   late TabController _tabController;
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this);
//   }

//   bool passToggle = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Padding(padding: EdgeInsets.only(top:29.0),
//         child:Image.asset('assets/Logo (1).png')
//         ),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             const SizedBox(
//               height: 30,
//             ),
//             Image.asset('assets/image 134.png'),
//             TabBarWidget(
//               tabController: _tabController,
//             ),
//             Expanded(
//                 child: TabBarView(
//               controller: _tabController,
//               children: [
//                     Phone(
//                         phoneController: phoneController,
//                         passwordController: passwordController),
//                     Email(
//                         emailController: emailController,
//                         passwordController: passwordController),
//               ],
//             ))
//           ],
//         ),
//       ),
//     );
//   }
// }

// class TabBarWidget extends StatelessWidget {
//   final TabController tabController;
//   const TabBarWidget({super.key, required this.tabController});

//   @override
//   Widget build(BuildContext context) {
//     return TabBar(
//       controller: tabController,
//       tabs: const [
//         Tab(
//           text: 'Teлeфoн',
//         ),
//         Tab(
//           text: 'Email',
//         ),
//       ],
//       indicator: const BoxDecoration(
//         border: Border(
//           bottom: BorderSide(
//             color: Color(0xFF1780C2),
//             width: 2,
//           ),
//         ),
//       ),
//       labelColor: const Color(0xFF1780C2),
//       unselectedLabelColor: const Color(0xFFA3A3A3),
//     );
//   }
// }

// class Phone extends StatelessWidget {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final TextEditingController phoneController;
//   final TextEditingController passwordController;
//    Phone({super.key, required this.phoneController, required this.passwordController});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 12),
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             const SizedBox(height: 30),
//              Form(
//               //key: _formKey,
//                child: CustomTextField(
//                 labelText: 'Введите номер',
//                 controller: phoneController,
//                 keyboardType: TextInputType.phone,
//                 validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Please enter your phone number';
//                 }
//                 return null;
//               },
//                            ),
//              ),
//             const SizedBox(
//               height: 20,
//             ),
//              CustomTextField(
//               labelText: 'Пароль',
//               controller: passwordController,
//               isPassword: true,
//               keyboardType: TextInputType.visiblePassword,
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Please enter your password';
//                 }
//                 else if(value.length < 8){
//                   return 'Password must be at least 8 characters long';
//                 }
//                 return null;
//               },
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: ((context) => const ForgotPasswordScreen()),
//                   ),
//                 );
//               },
//               child: const Text(
//                 'Забыли пароль?',
//                 style: TextStyle(color: Color(0xFF1780C2)),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//              AppButton(
//               text: 'Войти',
//               onPressed: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => const ConfirmPhoneScreen()));
//               },
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 const Text(
//                   'Нет аккаунта?',
//                   style: TextStyle(color: Color(0xFF404040)),
//                 ),
//                 GestureDetector(
//                   onTap:(){
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: ((context) => const RegisterScreen()),
//                       ),
//                     );
//                   },
//                     child: const Text(
//                   'Зарегистрироваться',
//                   style: TextStyle(color: Color(0xFF1780C2)),
//                 ))
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Email extends StatelessWidget {

//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final TextEditingController emailController;
//   final TextEditingController passwordController;
//    Email({super.key, required this.emailController, required this.passwordController});

//   @override
//   Widget build(BuildContext context) {
//     return  Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 12),
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             const SizedBox(height: 30),
//              CustomTextField(
//               labelText: 'Email',
//               controller: emailController,
//               keyboardType: TextInputType.emailAddress,
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//              CustomTextField(
//               labelText: 'Пароль',
//               controller: passwordController,
//               isPassword: true,
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             GestureDetector(
//               onTap: (){
//                 Navigator.push(context, MaterialPageRoute(builder: ((context) => const ForgotPasswordScreen())));
//               },
//               child: const Text(
//                 'Забыли пароль?',
//                 style: TextStyle(color: Color(0xFF1780C2)),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//              AppButton(
//               text: 'Войти',
//               onPressed: () {
//                 if (_formKey.currentState!.validate()) {
//                   // Validation passed, continue with login process
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => const ConfirmPhoneScreen()));
//                 }
//               },
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//              Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 const Text(
//                   'Нет аккаунта?',
//                   style: TextStyle(color: Color(0xFF404040)),
//                 ),
//                 GestureDetector(
//                   onTap: (){
//                     Navigator.push(context, MaterialPageRoute(builder: (context)=>const RegisterScreen()));
//                   },
//                   child: const Text(
//                     'Зарегистрироваться',
//                     style: TextStyle(color: Color(0xFF1780C2)),
//                   ),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:umar_azizov/components/app_botton.dart';
import 'package:umar_azizov/components/custom_textField.dart';
import 'package:umar_azizov/screens/forgot_password_screen.dart';
import 'package:umar_azizov/screens/register_screen.dart';
import 'package:umar_azizov/screens/subscriptions_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 29.0),
          child: Image.asset(
            'assets/Logo (1).png',
            height: 50,
          ),
        ),
      ),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20.0),
            Image.asset(
              "assets/image 134.png",
              width: 300,
              fit: BoxFit.fill,
              height: 215,
            ),
            const SizedBox(height: 30),
            TabBarWidget(
              tabController: _tabController,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height -
                  kToolbarHeight -
                  20 - // height of the tab
                  30 - // height of the space below the tab
                  kTextTabBarHeight, // height of the tab bar
              child: TabBarView(
                controller: _tabController,
                children: [
                  SignInPhoneForm(),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: SignInEmailForm(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TabBarWidget extends StatelessWidget {
  final TabController tabController;

  const TabBarWidget({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      tabs: const [
        Tab(text: 'Телефон'),
        Tab(text: 'Email'),
      ],
      indicator: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFF1780C2),
            width: 2,
          ),
        ),
      ),
      labelColor: const Color(0xFF1780C2),
      unselectedLabelColor: Colors.grey,
    );
  }
}

class SignInPhoneForm extends StatefulWidget {
  SignInPhoneForm({super.key});

  @override
  State<SignInPhoneForm> createState() => _SignInPhoneFormState();
}

class _SignInPhoneFormState extends State<SignInPhoneForm> {
  final storage = const FlutterSecureStorage();

  final phoneController = TextEditingController();

  final passwordController = TextEditingController();

  String errorMess = '';
  String errPass = '';
  bool phoneBorderColor = false;

  Future<void> login(BuildContext context) async {
    try {
      var response = await http.post(
        Uri.parse('https://euromedapi.softclub.tj/api/login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          "email_or_phone": phoneController.text,
          "password": passwordController.text,
        }),
      );
      if (response.statusCode == 200) {
        String token = response.body;

        await storage.write(key: 'token', value: token);
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const SubscriptionScreen()));
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Login successful!'),
            backgroundColor: Colors.green,
          ),
        );
      } else {
        setState(
          () {
            errorMess = json
                .decode(response.body)["errors"]["email_or_phone"]
                .toString();
            errPass =
                json.decode(response.body)["errors"]["password"].toString();
            phoneBorderColor = true;
          },
        );
        print(response.body);
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            controller: phoneController,
            labelText: 'Введите номер',
            isPassword: false,
            keyboardType: TextInputType.number,
            //inputFormatters: ,
          ),
          !errorMess.isEmpty && errorMess != 'null'
              ? Text(
                  errorMess,
                  style: const TextStyle(color: Colors.red),
                )
              : const Text(""),
          const SizedBox(height: 20),
          CustomTextField(
            controller: passwordController,
            labelText: 'Пароль',
            isPassword: true,
          ),
          !errPass.isEmpty && errPass != 'null'
              ? Text(
                  errPass,
                  style: const TextStyle(color: Colors.red),
                )
              : const Text(""),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()),
              );
            },
            child: const Center(
              child: Text(
                'Забыли пароль?',
                style: TextStyle(
                  color: Color(0xff1780C2),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          AppButton(
            text: 'Войти',
            onPressed: () {
              login(context);
            },
          ),
          const SizedBox(
            height: 18.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Нет аккаунта?",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                width: 10.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterScreen()),
                  );
                },
                child: const Text(
                  'Зарегистрироваться',
                  style: TextStyle(
                    color: Color(0xff1780C2),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SignInEmailForm extends StatefulWidget {
  SignInEmailForm({super.key});

  @override
  State<SignInEmailForm> createState() => _SignInEmailFormState();
}

class _SignInEmailFormState extends State<SignInEmailForm> {
  final storage = const FlutterSecureStorage();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  String errorMess = '';

  String errPass = '';

  Future<void> login(BuildContext context) async {
    try {
      var response = await http.post(
        Uri.parse('https://euromedapi.softclub.tj/api/login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          "email_or_phone": emailController.text,
          "password": passwordController.text,
        }),
      );

      if (response.statusCode == 200) {
        String token = response.body;

        await storage.write(key: 'token', value: token);
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const SubscriptionScreen()));
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Login successful!'),
            backgroundColor: Colors.green,
          ),
        );
      } else {
        setState(
          () {
            errorMess = json
                .decode(response.body)["errors"]["email_or_phone"]
                .toString();
            errPass =
                json.decode(response.body)["errors"]["password"].toString();
          },
        );
        print(response.body);
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            controller: emailController,
            labelText: 'Введите Email',
            isPassword: false,
          ),
          !errorMess.isEmpty && errorMess != 'null'
              ? Text(
                  errorMess,
                  style: const TextStyle(color: Colors.red),
                )
              : const Text(""),
          const SizedBox(height: 20),
          CustomTextField(
            controller: passwordController,
            labelText: 'Пароль',
            isPassword: true,
          ),
          !errPass.isEmpty && errPass != 'null'
              ? Text(
                  errPass,
                  style: const TextStyle(color: Colors.red),
                )
              : const Text(""),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ForgotPasswordScreen(),
                ),
              );
            },
            child: const Center(
              child: Text(
                'Забыли пароль?',
                style: TextStyle(
                  color: Color(0xff1780C2),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          AppButton(
            text: 'Войти',
            onPressed: () {
              login(context);
            },
          ),
          const SizedBox(
            height: 18.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Нет аккаунта?",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                width: 10.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterScreen()),
                  );
                },
                child: const Text(
                  'Зарегистрироваться',
                  style: TextStyle(
                    color: Color(0xff1780C2),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
