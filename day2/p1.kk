import help/aoc
import hlib/patterns/common

fun main()
  val input = input()
  val ranges = input.split(",")
  ranges.map(trim).foldl(0) fn(cur, range)
    val [start, end] = range.split("-")
    val start-count = start.count
    val halved-start = parse-int(
      if start-count.is-even then
        start.first(start-count / 2).string
      else
        "1" ++ string/repeat("0", start-count / 2)
    )
    val end-count = end.count
    val halved-end = parse-int(
      if end-count.is-even then
        end.first(end-count / 2).string
      else
        string/repeat("9", end-count / 2)
    )
    val [start-num, end-num] = [start, end].map fn(x) x.parse-int.unjust
    val range-total = 
      list(halved-start.unjust, halved-end.unjust).filter-map fn(x)
        val digits = x.count-digits
        val palindrome = x * digits.exp10 + x
        if palindrome >= start-num && palindrome <= end-num then
          Just(palindrome)
        else
          Nothing
      .sum
    cur + range-total
