main() {
  Child c = Child();
  c.m1(98);
}

class Parent {
  var pesan = 'ini adalah pesan dari class parent';
  m1(var a) {
    print('nilai dari ${a}');
  }
}

class Child extends Parent {
  @override
  m1(var b) {
    print('nilai dari b ${b}');
    super.m1(49);
    print('${super.pesan}');
  }
}
