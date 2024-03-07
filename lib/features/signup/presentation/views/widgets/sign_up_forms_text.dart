import 'package:doc_doc_app/core/utils/app_regex.dart';
import 'package:doc_doc_app/features/signup/presentation/manger/sign_up_cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/color.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../../login/presentation/views/widgets/password_validation.dart';

class SignUpFormsText extends StatefulWidget {
  const SignUpFormsText({super.key});

  @override
  State<SignUpFormsText> createState() => _SignUpFormsTextState();
}

class _SignUpFormsTextState extends State<SignUpFormsText> {
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  bool isPhoneNumberValid = false;
  bool isObscureTextPassword = true;
  bool isObscureTextConfirmation = true;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();

    passwordController = context.read<SignUpCubit>().passwordController;
    setupPassowrdControllerListener();
  }

  void setupPassowrdControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(
            context.read<SignUpCubit>().passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(
            context.read<SignUpCubit>().passwordController.text);
        hasSpecialCharacters = AppRegex.hasSpecialCharacter(
            context.read<SignUpCubit>().passwordController.text);
        hasNumber = AppRegex.hasNumber(
            context.read<SignUpCubit>().passwordController.text);
        hasMinLength = AppRegex.hasMinLength(
            context.read<SignUpCubit>().passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
              controller: context.read<SignUpCubit>().nameController,
              hintText: 'Name',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'please enter valide name';
                }
              }),
          verticalSpace(16),
          AppTextFormField(
              controller: context.read<SignUpCubit>().phoneController,
              hintText: 'Phone number',
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isPhoneNumberValid(value)) {
                  return 'please enter valide phone number';
                }
              }),
          verticalSpace(16),
          AppTextFormField(
            controller: context.read<SignUpCubit>().emailController,
            hintText: 'Email',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'please enter valide email';
              }
            },
          ),
          verticalSpace(16),
          AppTextFormField(
            controller: context.read<SignUpCubit>().passwordController,
            hintText: 'Password',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please enter valide password';
              }
            },
            isObscureText: isObscureTextPassword,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isObscureTextPassword = !isObscureTextPassword;
                });
              },
              icon: Icon(
                isObscureTextPassword ? Icons.visibility_off : Icons.visibility,
                color: ColorManager.mainBlue,
                size: 18.r,
              ),
            ),
          ),
          verticalSpace(24),
          AppTextFormField(
            controller:
                context.read<SignUpCubit>().passwordConfirmationController,
            hintText: 'Password confirmation',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please enter valide password';
              }
            },
            isObscureText: isObscureTextConfirmation,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isObscureTextConfirmation = !isObscureTextConfirmation;
                });
              },
              icon: Icon(
                isObscureTextConfirmation
                    ? Icons.visibility_off
                    : Icons.visibility,
                color: ColorManager.mainBlue,
                size: 18.r,
              ),
            ),
          ),
          verticalSpace(24),
          PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
