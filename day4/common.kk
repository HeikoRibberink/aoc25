module common

pub import hlib/ds/matrix
import hlib/ext/list
import help/aoc

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
