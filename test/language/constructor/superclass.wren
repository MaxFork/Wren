class A {
  def construct new(arg) {
    System.print("new A %(arg)")
    _field = arg
  }

  def aField { _field }
}

class B is A {
  def construct new(arg1, arg2) {
    super(arg2)
    System.print("new B %(arg1)")
    _field = arg1
  }

  def bField { _field }
}

class C is B {
  def construct new() {
    super("one", "two")
    System.print("new C")
    _field = "c"
  }

  def cField { _field }
}

var c = C.new()
// expect: new A two
// expect: new B one
// expect: new C
System.print(c is A) // expect: true
System.print(c is B) // expect: true
System.print(c is C) // expect: true

System.print(c.aField) // expect: two
System.print(c.bField) // expect: one
System.print(c.cField) // expect: c
