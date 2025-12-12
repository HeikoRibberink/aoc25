import help/aoc

fun main()
  val input = input().lines
  var zeroes := 0
  input.foldl(50) fn(cur, line)
    if cur == 0 then 
      zeroes := zeroes + 1
    val trimmed = line.trim()
    val chars = trimmed.list()
    val Cons(dir, tail) = chars
    val num = tail.string.parse-int().expect("Should be integer")
    match dir
      'L' -> (cur - num) % 100
      'R' -> (cur + num) % 100
  zeroes.println
  
