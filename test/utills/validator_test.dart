import 'package:flutter_test/flutter_test.dart';
import 'package:inz/utills/validators.dart';

void main() {
  group("Email", () {
    test("Valid email", () {
      String email = "bartek_wk@interia.eu";
      bool isValid = Validators.emailValidation(email);
      expect(isValid, true);
    });

    test("Invalid email", () {
      String email = "bartekinteria.eu";
      bool isValid = Validators.emailValidation(email);
      expect(isValid, false);
    });
  });

  group("Password", () {
    test("Valid password", () {
      String password = "Maciek123";
      bool isValid = Validators.passwordValidation(password);
      expect(isValid, true);
    });

    test("Invalid password", () {
      String password = "maciek";
      bool isValid = Validators.passwordValidation(password);
      expect(isValid, false);
    });
  });

  group(" Two passwords", () {
    test("Identic passwords", () {
      String password = "Maciek123";
      String passwordRE = "Maciek123";
      bool isValid = Validators.passwordsSame(password, passwordRE);
      expect(isValid, true);
    });

    test("Different passwords", () {
      String password = "Maciek123";
      String passwordRE = "maciek123";
      bool isValid = Validators.passwordsSame(password, passwordRE);
      expect(isValid, false);
    });
  });
}
