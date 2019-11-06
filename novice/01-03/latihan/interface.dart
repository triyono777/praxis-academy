main() {
  ConsolePrinter ngeprint = ConsolePrinter();
  ngeprint.print_data();
}

class Printer {
  print_data() {
    print('ini printer sedang print data');
  }
}

class ConsolePrinter implements Printer {
  @override
  print_data() {
    print('ini nge print ke console');
  }
}
