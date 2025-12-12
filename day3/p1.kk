import hlib/patterns/common
import day3/common

pub fun main()
  input-lines()
  .map fn(line)
    line.foldl((line.length - 1, 0, 0)) fn((to-end, l, r), num)
      val (l', r') = 
        if num > l && to-end > 0 then
          (num, 0)
        else if num > r then
          (l, num)
        else
          (l, r)
      (to-end - 1, l', r')
  .map fn((_, l, r))
    l * 10 + r
  .sum
