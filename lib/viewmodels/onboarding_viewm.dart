import 'package:flutter/material.dart';

class OnboardingViewModel extends ChangeNotifier {
  final OnboardingModel _data = OnboardingModel(
    title: "Welcome To Learner",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt dolore magna aliqua",
    buttonText: "Get Started",
  );

  OnboardingModel get data => _data;
}

class OnboardingModel {
  final String title;
  final String description;
  final String buttonText;

  OnboardingModel({
    required this.title,
    required this.description,
    required this.buttonText,
  });
}

