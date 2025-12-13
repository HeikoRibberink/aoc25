import day4/common
import hlib/math

fun main()
  val matrix = parse-input()
  directions.println
  matrix
    .map fn(idx, is-roll)
      if is-roll then
        val num-around = directions
          .map fn(delta)
            val around : (int, int) = idx + delta
            matrix.at(around).default(False).int
          .sum
        num-around < 4
      else
        False
    .foldl(0) fn(c, x) c + x.int


