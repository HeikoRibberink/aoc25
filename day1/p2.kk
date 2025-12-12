import help/aoc

fun main()
  val input = input().lines
  var zeroes := 0
  input.foldl(50) fn(cur, line)
    val trimmed = line.trim()
    val chars = trimmed.list()
    val Cons(dir, tail) = chars
    val num = tail.string.parse-int().expect("Should be integer")
    val cur' = cur + (match dir
      'L' -> ~num
      'R' -> num
    )
    val change =
      if cur' <= 0 then
        abs((cur' - 1) / 100) - int(cur == 0)
      else
        cur' / 100
    //(cur, num, cur', cur' % 100, change).println

    zeroes := zeroes + change
    cur' % 100

  zeroes.println
  
