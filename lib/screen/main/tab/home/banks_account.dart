import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

import 'banks_dummy.dart';

final bankAccountShinhan1 = BankAccount(
  bankShinhan,
  142717273,
  accountTypeName: "신한 주거래 우대통장(저축예금)",
);

final bankAccountShinhan2 = BankAccount(
  bankShinhan,
  3821018234,
  accountTypeName: "저축예금",
);

final bankAccountShinhan3 = BankAccount(
  bankShinhan,
  247291284,
  accountTypeName: "저축예금",
);

final bankAccountToss = BankAccount(
  bankToss,
  598599233,
);

final bankAccountKakao = BankAccount(
  bankKakao,
  5019293209,
  accountTypeName: "입출금통장",
);

final bankAccountList = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao,
];
