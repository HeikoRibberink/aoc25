import help/aoc

fun main()
  val input = input().lines
  var zeroes := 0
  input.foldl(50) fn(cur, line)
    val trimmed = line.trim()
    val chars = trimmed.list()
    val Cons(dir, tail) = chars
    val num = tail.string.parse-int().expect("Should be integer")
    val cur' = match dir
      'L' -> cur - num
      'R' -> cur + num
    cur'.println
    zeroes := zeroes + ((cur' + cur'.sign.int()) / 100).abs
    cur' % 100

  zeroes.println
  
