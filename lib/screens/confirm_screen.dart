import 'package:flutter/material.dart';
import 'package:umar_azizov/components/app_botton.dart';
import 'package:umar_azizov/components/custom_textField.dart';
import 'package:umar_azizov/screens/login_screen.dart';
import 'package:umar_azizov/screens/subscriptions_screen.dart';

class ConfirmPhoneScreen extends StatelessWidget {
  const ConfirmPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
        MediaQueryData mediaQueryData = MediaQuery.of(context);

    double deviceWidth = mediaQueryData.size.width;
    double deviceHeight = mediaQueryData.size.height;
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back), 
        onPressed: () { 
          Navigator.pop(context,MaterialPageRoute(builder: (context) =>const LoginScreen()));
         },
        ),
        title: const Text('Подтверждение',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(children: [
            Image.asset('assets/image 120.png',width: deviceWidth*0.6,fit: BoxFit.fill,height: deviceHeight*0.26,),
            const SizedBox(height: 30,),
            const Text(textAlign: TextAlign.center, 'Введите код отправленный на номер\n888880101'),
            const SizedBox(height: 30,),
             CustomTextField(labelText: 'Введите код'),
            const SizedBox(height: 30,),
            const Text('Отправить новый код',style: TextStyle(color: Color(0xFF1780C2)),),
            const SizedBox(height: 10,),
             AppButton(text: 'Подтвердить',onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=> const SubscriptionScreen()));
             },),
          ],),
        ),
      )
    );
  }
}

class ConfirmEmailScreen extends StatelessWidget {
  const ConfirmEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    double deviceWidth = mediaQueryData.size.width;
    double deviceHeight = mediaQueryData.size.height;

    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back), 
        onPressed: () { 
          Navigator.pop(context,MaterialPageRoute(builder: (context) => const LoginScreen()));
         },
        ),
        title: const Text('Подтверждение',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(children: [
            Image.asset('assets/image 120.png',width: deviceWidth*0.6,fit: BoxFit.fill,height: deviceHeight*0.26,),
            const SizedBox(height: 30,),
            const Text(textAlign: TextAlign.center, 'Введите код отправленный на почту \nexample@mail.ru'),
            const SizedBox(height: 30,),
             CustomTextField(labelText: 'Введите код'),
            const SizedBox(height: 30,),
            GestureDetector(onTap:(){},child: const Text('Отправить новый код',style: TextStyle(color: Color(0xFF1780C2)),)),
            const SizedBox(height: 10,),
             AppButton(text: 'Подтвердить',onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => const SubscriptionScreen()));
             },),
          ],),
        ),
      )
    );
  }
}