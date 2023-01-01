import '../../../../../../core/core.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
    required this.email,
    required this.password,
    required this.fullName,
    required this.validatorFullName,
    required this.validatorEmail,
    required this.validatorPassword,
  }) : super(key: key);

  final TextEditingController fullName, email, password;
  final String? Function(String?) validatorFullName,
      validatorEmail,
      validatorPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextFieldWidget(
          textEditingController: fullName,
          hintText: 'Full Name',
          validator: validatorFullName,
        ),
        Gap.customGapHeight(15),
        TextFieldWidget(
          textEditingController: email,
          hintText: 'Email',
          validator: validatorEmail,
        ),
        Gap.customGapHeight(15),
        TextFieldWidget(
          textEditingController: password,
          hintText: 'Password',
          validator: validatorPassword,
        ),
      ],
    );
  }
}
