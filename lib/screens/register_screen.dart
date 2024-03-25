import 'package:flutter/material.dart';
import 'package:umar_azizov/components/app_botton.dart';
import 'package:umar_azizov/components/custom_textField.dart';
import 'package:umar_azizov/screens/login_screen.dart';
import 'package:umar_azizov/screens/subscriptions_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen>
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
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset('assets/Logo (1).png'),
            Image.asset('assets/image 134.png'),
            TabBarWidget(
              tabController: _tabController,
            ),
            Expanded(
                child: TabBarView(
              controller: _tabController,
              children: const[
                 Phone(),
                 Email(),
              ],
            ))
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
        Tab(
          text: 'Teлeфoн',
        ),
        Tab(
          text: 'Email',
        ),
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
      unselectedLabelColor: const Color(0xFFA3A3A3),
    );
  }
}

class Phone extends StatelessWidget {
  const Phone({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
             CustomTextField(
              labelText: 'Ваше имя',
              keyboardType: TextInputType.name,
            ),
            const SizedBox(
              height: 15,
            ),
             CustomTextField(
              labelText: 'Введите номер',
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(
              height: 15,
            ),
             CustomTextField(
              labelText: 'Пароль',
              isPassword: true,
              keyboardType: TextInputType.visiblePassword,
            ),
            const SizedBox(
              height: 15,
            ),
            AppButton(
              text: 'Зарегистрироваться',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SubscriptionScreen()));
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              textAlign: TextAlign.center,
              'При регистрации вы соглашайтесь с Политикой конфиденциальности и Правилами использования платформы',
              style: TextStyle(
                  color: Color(0xFF737373),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Уже есть аккаунт?',
                  style: TextStyle(color: Color(0xFF404040)),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()));
                  },
                  child: const Text(
                    'Войти',
                    style: TextStyle(color: Color(0xFF1780C2)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Email extends StatelessWidget {
  const Email({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
             CustomTextField(
              labelText: 'Ваше имя',
            ),
            const SizedBox(
              height: 15,
            ),
             CustomTextField(
              labelText: 'Email',
            ),
            const SizedBox(
              height: 15,
            ),
             CustomTextField(
              labelText: 'Пароль',
              isPassword: true,
            ),
            const SizedBox(
              height: 15,
            ),
            AppButton(
              text: 'Зарегистрироваться',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SubscriptionScreen()));
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              textAlign: TextAlign.center,
              'При регистрации вы соглашайтесь с Политикой конфиденциальности и Правилами использования платформы',
              style: TextStyle(
                  color: Color(0xFF737373),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Уже есть аккаунт?',
                  style: TextStyle(color: Color(0xFF404040)),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()));
                  },
                  child: const Text(
                    'Войти',
                    style: TextStyle(color: Color(0xFF1780C2)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
