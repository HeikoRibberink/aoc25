module common
import help/aoc

pub fun get-ranges()
  input().split(",").map fn(range)
    val [start, end] = range.trim.split("-").map fn(p)
      p.parse-int.unjust
    [start, end]

pub fun repeat-digits(x : int, n : int) : int
  val x-len = x.count-digits
  list(0, n - 1).map fn(pow)
    x * (x-len * pow).exp10
  .sum

pub fun first-digits(x : int, n : int) : int
  val len = x.count-digits
  x / (len - n).exp10
