module common
import help/aoc

pub fun input-lines()
  input().lines().map(_.trim.list.map(_.int - '0'.int))

val to-zero = const(0)

pub fun maximum-reset-behind(digits: list<int>, digit : int, skip : int) : list<int>
  match digits
    Cons(x, tail) ->
      if skip <= 0 && digit > x then
        Cons(digit, tail.map(to-zero))
      else
        Cons(x, tail.maximum-reset-behind(digit, skip - 1))
    Nil -> Nil

pub fun digits-to-int(digits: list<int>)
  digits.foldl(0) fn(sum, digit)
    sum * 10 + digit
