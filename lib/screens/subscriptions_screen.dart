import 'package:flutter/material.dart';
import 'package:umar_azizov/components/app_botton.dart';
import 'package:umar_azizov/screens/login_screen.dart';
import 'package:umar_azizov/screens/payment_screen.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.pop(context,MaterialPageRoute(builder: (context) => const LoginScreen(),));
            },
          ),
          title: const Text(
            textAlign: TextAlign.start,
            'Подписки',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text('Выберите подходящую подписку'),
              Row(
                children: [
                  SizedBox(
                    width: 185,
                    child: Card(
                      color: const Color(0xFFF3E8FF),
                      child: Stack(
                        children: [
                          Positioned(
                            right: 0,
                            child: Image.asset(
                              'assets/purplePattern.png',
                              fit: BoxFit.cover,
                              width: 100,
                              height: 120,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Курсы',
                                  style: TextStyle(
                                    color: Color(0xFF9333EA),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '850 c',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      '  /месяц',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Color(0xFF525252),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Просмотр курсов и его содержимого',
                                  style: TextStyle(
                                    color: Color(0xFF404040),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                AppButton(
                                  text: 'Выбрать',
                                  textColor: Color(0xFF1780C2),
                                  backgroundColor: Colors.white,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                   SizedBox(
                    width: 185,
                    child: Card(
                      color: const Color(0xFFFFEDD5),
                      child: Stack(
                        children: [
                          Positioned(
                            right: 0,
                            top: 0,
                            child: Image.asset(
                              'assets/orangePattern.png',
                              fit: BoxFit.cover,
                              width: 100,
                              height: 120,
                            ),
                          ),
                          const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Консультация',
                                style: TextStyle(
                                    color: Color(0xFFEA580C),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '30 с',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 18),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                '3 консультации с\nврачом',
                                style: TextStyle(
                                    color: Color(0xFF404040),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              AppButton(
                                text: 'Выбрать',
                                textColor: Color(0xFF1780C2),
                                backgroundColor: Colors.white,
                               ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Card(
                  color: const Color(0xFFE0F2FE),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        child: Image.asset(
                              'assets/Union.png',
                              fit: BoxFit.cover,
                              width: 100,
                              height: 120,
                            ),
                      ),
                          Positioned(
                            right: 10,
                            top: 20,
                            child: Image.asset(
                              'assets/5%.png',
                              fit: BoxFit.cover,
                              width: 50,
                              height: 50,
                            ),
                          ),
                      Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/crown.png'),
                              const Text(
                                '  Курсы + консультация',
                                style: TextStyle(color: Color(0xFF0284C7),fontSize: 16),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '800 c',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 18),
                              ),
                              Text(
                                '  /месяц',
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xFF525252)),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '880 c',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF525252),
                                    decoration: TextDecoration.lineThrough),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '/месяц',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFF525252),
                                    decoration: TextDecoration.lineThrough),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Доступ к курсу и консультация со скидкой',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF404040),
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          AppButton(
                            text: 'Выбрать',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PaymentScreen()));
                            },
                          ),
                        ],
                      ),
                    ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 110,
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.push(context);
                },
                  child: const Text(
                    textAlign: TextAlign.left,
                    'Пропустить >',
                    style: TextStyle(
                        color: Color(0xFF1780C2),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),),
            ],
          ),
        ));
  }
}
