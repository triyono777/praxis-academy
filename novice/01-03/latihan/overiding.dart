main() {
  Child c = Child();
  c.m1(33);
}

class Parent {
  m1(var a) {
    print('value of a ${a}');
  }
}

class Child extends Parent {
  @override
  m1(var b) {
    print('nilai of b ${b}');
  }
}
