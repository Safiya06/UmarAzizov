import 'package:flutter/material.dart';
import 'package:umar_azizov/components/app_botton.dart';
import 'package:umar_azizov/components/custom_textField.dart';
import 'package:umar_azizov/screens/login_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back), 
        onPressed: () { 
          Navigator.pop(context,MaterialPageRoute(builder: ((context) => const LoginScreen())));
         },
        ),
        title: const Text('Сброс пароля',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset('assets/image 131.png'),
            const SizedBox(height: 20,),
            const Text(textAlign: TextAlign.center, 'Введите ваш email, на который будет\n отправлен код для сброса пароля'),
            const SizedBox(height: 20,),
             CustomTextField(labelText: 'Email'),
            const SizedBox(height: 20,),
             AppButton(text: 'Отправить код',onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) => const ConfirmFPEmailScreen())));
             },),
          ],),
        ),
      )
    );
  }
}

class ConfirmFPEmailScreen extends StatelessWidget {
  const ConfirmFPEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back), 
        onPressed: () { 
          Navigator.pop(context,MaterialPageRoute(builder: (context)=> const ForgotPasswordScreen()));
         },
        ),
        title: const Text('Сброс пароля',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(children: [
            Image.asset('assets/image 122.png'),
            const SizedBox(height: 20,),
            const Text(textAlign: TextAlign.center, 'Введите код отправленный на почту \nexample@mail.ru'),
            const SizedBox(height: 20,),
             CustomTextField(labelText: 'Введите код'),
            const SizedBox(height: 30,),
            const Text('Отправить новый код',style: TextStyle(color: Color(0xFF1780C2)),),
            const SizedBox(height: 20,),
             AppButton(text: 'Подтвердить',onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const NewPasswordScreen()));
            },),
          ],),
        ),
      )
    );
  }
}


class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back), 
        onPressed: () { 
          Navigator.pop(context,MaterialPageRoute(builder: (context)=> const ConfirmFPEmailScreen()));
         },
        ),
        title: const Text('Сброс пароля',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset('assets/image 130.png'),
            const SizedBox(height: 20,),
            const Text(textAlign: TextAlign.center, 'Придумайте новый пароль'),
            const SizedBox(height: 20,),
             CustomTextField(labelText: 'Введите код',isPassword: true,),
            const SizedBox(height: 20,),
             CustomTextField(labelText: 'Повторите пароль',isPassword: true,),
            const SizedBox(height: 20,),
             AppButton(text: 'Подтвердить',onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
             },),
          ],),
        ),
      )
    );
  }
}