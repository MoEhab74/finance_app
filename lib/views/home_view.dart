import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/primary_outlined_button_widget.dart';
import 'package:finance_app/core/widgets/primary_text_form_field.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home View')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AppButton(onPressed: () {}, text: 'Get Started'),
          ),
          const SizedBox(height: 20),
          PrimaryOutLinedButton(text: 'Login', onPressed: () {}),
          const SizedBox(height: 20),
          AppTextFormField(
            hintText: 'Username',
            // suffixIcon: 'assets/icons/eye_filled.png',
          ),
        ],
      ),
    );
  }
}
