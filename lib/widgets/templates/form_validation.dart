import '../../generated/l10n.dart';
import '../../presentation/login_screen/bloc/login_cubit.dart';


abstract class FormValidation{
 static String? usernameError(LoginState state) => state.whenOrNull<String?>(
    fieldIsEmptyError: (isUsernameEmpty, _) {
      if (isUsernameEmpty) return S.current.usernameShouldntBeEmpty;
      return null;
    },
  );

 String? passwordError(LoginState state) => state.whenOrNull<String?>(
   fieldIsEmptyError: (_, isPasswordEmpty) {
     if (isPasswordEmpty) return S.current.passwordShouldntBeEmpty;
     return null;
   },
   wrongCredentialsError: () => S.current.incorrectUsernameOrPassword,
 );

}