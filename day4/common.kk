module common

pub import hlib/ds/matrix
import hlib/ext/list
import help/aoc
import hlib/math

pub val directions : list<(int, int)> = [-1, 0, 1].self-product.remove(fn(dir) dir == (0, 0))

pub fun parse-input() : _ matrix<bool>
  input()
  .lines()
  .map fn(line)
    line.trim.list.map fn(char)
      match char
        '@' -> True
        '.' -> False
  .matrix
  .unjust

pub fun list-accessible(matrix: matrix<bool>) : list<(int, int)>
  matrix
    .foldl([]) fn(accessible, is-roll)
      if is-roll then
        val num-around = directions
          .map fn(delta)
            val around : (int, int) = index() + delta
            matrix.at(around).default(False).int
          .sum
        if num-around < 4 then
          Cons(index(), accessible)
        else
          accessible
      else
        accessible
