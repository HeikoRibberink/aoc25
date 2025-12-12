import hlib/patterns/common
import hlib/patterns/exit
import hlib/ext/int
import day2/common

fun main()
  val ranges = get-ranges()
  ranges.map fn([start, end])
    list(start, end).filter-map fn(i) : _ maybe<int>
      with early-exit
      val i-len = i.count-digits
      for(1, i-len - 1) fn(len)
        val repeat = i-len.divceil(len)
        val repeated = i.first-digits(len).repeat-digits(repeat)
        if repeated == i then
          exit(Just(repeated))
      Nothing
  .remove(is-empty)
  .concat
  .sum
