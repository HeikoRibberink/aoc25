import day4/common
import hlib/patterns/exit

pub fun main()
  var matrix := parse-input()
  var counter := 0
  loop-exit
    val accessible = matrix.list-accessible
    if accessible.length <= 0 then
      exit(())
    counter := counter + accessible.length
    println(counter)
    matrix := accessible.foldl(matrix) fn(mat, pos)
      mat.set(pos, False)
  counter
