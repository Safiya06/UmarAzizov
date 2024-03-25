import 'package:flutter/material.dart';
import 'package:umar_azizov/components/app_botton.dart';
import 'package:umar_azizov/components/custom_snackBar.dart';
import 'package:umar_azizov/components/custom_textField.dart';
import 'package:umar_azizov/screens/main_screen.dart';
import 'package:umar_azizov/screens/subscriptions_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
                context,
                MaterialPageRoute(
                    builder: (context) => const SubscriptionScreen()));
          },
        ),
        title: const Text(
          'Оплата',
          style: TextStyle(
            color: Color(0xFF262626),
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: const Color(0xFFE0F2FE),
              child: SizedBox(
                height: 120,
                child: Stack(children: [
                  Positioned(
                    right: 0,
                    child: Image.asset(
                      'assets/bluePattern.png',
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
                              style: TextStyle(
                                  color: Color(0xFF0284C7), fontSize: 16),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
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
                      ],
                    ),
                  ),
                ]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              ' Выберите способ оплаты',
              style: TextStyle(
                  color: Color(0xFF525252),
                  fontWeight: FontWeight.w400,
                  fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            TabBarWidget(
              tabController: _tabController,
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  Milli(),
                  Alif(),
                  Mir(),
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
      tabs: [
        Tab(
          child: Image.asset('assets/milli.png'),
        ),
        Tab(
          child: Image.asset('assets/alif.png'),
        ),
        Tab(
          child: Image.asset('assets/mir.png'),
        ),
      ],
      indicator: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Color(0xFF1780C2), width: 2.0),
          bottom: BorderSide(color: Color(0xFF1780C2), width: 2.0),
          left: BorderSide(color: Color(0xFF1780C2), width: 2.0),
          right: BorderSide(color: Color(0xFF1780C2), width: 2.0),
        ),
      ),
      //indicatorColor:tran,
      labelColor: const Color(0xFF1780C2),
      unselectedLabelColor: const Color(0xFFA3A3A3),
    );
  }
}

class Milli extends StatefulWidget {
  const Milli({super.key});

  @override
  State<Milli> createState() => _MilliState();
}

class _MilliState extends State<Milli> {
  bool _showSnackBar = false;

    _showChange() async {
    await Future.delayed( const Duration(seconds: 2), () {});
    _showSnackBar = false;
  }
 


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
           CustomTextField(labelText: '0000 0000 0000 0000'),
          const SizedBox(
            height: 15,
          ),
           Row(
            children: [
              CustomTextField(labelText: 'мм/гг', maxWidth: 185),
              SizedBox(
                width: 16,
              ),
              CustomTextField(
                labelText: 'CVC/CVV',
                maxWidth: 185,
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
           CustomTextField(labelText: 'Имя и Фамилия владельца'),
          const SizedBox(
            height: 25,
          ),
          const Row(
            children: [
              Icon(
                Icons.lock,
                color: Color(0xFFA3A3A3),
              ),
              Text(
                textAlign: TextAlign.center,
                'Мы обеспечим безопасность ваших данных\n используя безопасный методов шифрования',
                style: TextStyle(
                  color: Color(0xFFA3A3A3),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 45,
          ),
          AppButton(
            text: 'Продолжить',
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return CustomSnackBar(
                    title1: const Text(
                      'Подтверждение',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF262626),
                      ),
                    ),
                    image: Image.asset('assets/crown_blue_bg.png'),
                    iconButton: IconButton(
                        onPressed: () {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PaymentScreen()));
                        },
                        icon: const Icon(
                          Icons.clear,
                          color: Colors.black,
                        )),
                    title2: const Text(
                      'Курсы + консультация',
                      style: TextStyle(
                          color: Color(0xFF0284C7),
                          fontSize: 24,
                          fontWeight: FontWeight.w400),
                    ),
                    title3: const Text(
                      '800 с/месяц',
                      style: TextStyle(
                          color: Color(0xFF262626),
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                    content: const Text(
                      'Доступ к курсу и консультация со скидкой',
                      style: TextStyle(
                          color: Color(0xFF404040),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    title4: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFFF3F4F6),
                      ),
                      width: 328,
                      height: 129,
                      child: const Padding(
                        padding: EdgeInsets.only(right: 16, left: 16),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Подписка на курсы',
                              style: TextStyle(
                                  color: Color(0xFFA3A3A3),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              '30 дней',
                              style: TextStyle(
                                  color: Color(0xFF262626),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Divider(
                              color: Color(0xFFE2E8F0),
                            ),
                            // SizedBox(height: 10,),
                            Text(
                              'Консультации с врачом',
                              style: TextStyle(
                                  color: Color(0xFFA3A3A3),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              '3',
                              style: TextStyle(
                                  color: Color(0xFF262626),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    appButton: AppButton(
                      
                      text: 'Подтвердить',
                      onPressed: () {
                        setState((){
                          _showSnackBar = true;
                          _showChange();
                        });
                        Navigator.pop(context); // Dismiss the SnackBar
                        _showSnackBar ?  showDialog(
                          
                          context: context,
                          barrierDismissible:
                              false, // Prevent dismissing dialog on outside tap
                          builder: (BuildContext context) {
                            return  Dialog(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              child: Center(
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                                  child: CircularProgressIndicator(color:Colors.white,strokeWidth:8,backgroundColor: Color(0xFFB0B0B0),),)
                              ),
                            );
                          },
                        ) : Navigator.push(context, MaterialPageRoute(builder: (context)=>  MainScreen( )));
                        // Simulate an asynchronous operation
                        Future.delayed(const Duration(seconds: 2), () {
                          Navigator.pop(context); // Dismiss the dialog
                        });
                      },
                    ),

                    duration: const Duration(seconds: 2),
                    backgroundColor: Colors.white,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class Alif extends StatelessWidget {
  const Alif({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          CustomTextField(labelText: '0000 0000 0000 0000'),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              CustomTextField(labelText: 'мм/гг', maxWidth: 185),
              SizedBox(
                width: 16,
              ),
              CustomTextField(
                labelText: 'CVC/CVV',
                maxWidth: 185,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextField(labelText: 'Имя и Фамилия владельца'),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Icon(
                Icons.lock,
                color: Color(0xFFA3A3A3),
              ),
              Text(
                textAlign: TextAlign.center,
                'Мы обеспечим безопасность ваших данных\n используя безопасный методов шифрования',
                style: TextStyle(
                  color: Color(0xFFA3A3A3),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          SizedBox(
            height: 45,
          ),
          AppButton(text: 'Продолжить'),
        ],
      ),
    );
  }
}

class Mir extends StatefulWidget {
  const Mir({Key? key});

  @override
  _MirState createState() => _MirState();
}

class _MirState extends State<Mir> {
  bool _showCard = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
               CustomTextField(labelText: '0000 0000 0000 0000'),
              const SizedBox(
                height: 10,
              ),
               Row(
                children: [
                  CustomTextField(labelText: 'мм/гг', maxWidth: 185),
                  SizedBox(
                    width: 16,
                  ),
                  CustomTextField(
                    labelText: 'CVC/CVV',
                    maxWidth: 185,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
               CustomTextField(labelText: 'Имя и Фамилия владельца'),
              const SizedBox(
                height: 25,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.lock,
                    color: Color(0xFFA3A3A3),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Мы обеспечим безопасность ваших данных\n используя безопасный методов шифрования',
                    style: TextStyle(
                      color: Color(0xFFA3A3A3),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              AppButton(
                text: 'Продолжить',
                onPressed: () {
                  setState(() {
                    _showCard = !_showCard;
                  });
                },
              ),
            ],
          ),
        ),
        if (_showCard)
          Container(
            color: Colors.black.withOpacity(0.5),
            child: const Center(
              child: Card(
                elevation: 4,
                margin: EdgeInsets.all(16),
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Text('Содержимое вашей карточки'),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
