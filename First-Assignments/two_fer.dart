void main() {
  print(twoFer(name: 'Kofi'));
  print(twoFer());
}

String twoFer({String name = 'you'}) {
  return 'One for $name, one for me.';
}
