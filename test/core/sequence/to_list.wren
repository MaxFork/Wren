class TestSequence is Sequence {
  def construct new() {}

  def iterate(iterator) {
    if (iterator == null) return 1
    if (iterator == 3) return false
    return iterator + 1
  }

  def iteratorValue(iterator) { iterator }
}

System.print(TestSequence.new().toList) // expect: [1, 2, 3]
