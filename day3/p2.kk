import day3/common
import hlib/patterns/exit
import hlib/patterns/common

pub fun main()
  input-lines()
  .map fn(line)
    val (_, digits) = line
      .foldl((line.length - 1, replicate(0, 12))) fn((to-end, digits), num)
        val skip = 11 - to-end
        (to-end - 1, digits.maximum-reset-behind(num, skip))
    digits.digits-to-int
  .sum
