# def fib(n)
#   if (n <= 2)
#     return 1
#   else
#     return (fib(n-1) + fib(n-2))
#   end
# end


# p fib(5)


def fib(c)
  n1 = 0
  n2 = 1
  s = []
  while c > 2
    n3 = n1 + n2
    s << n3
    n1 = n2
    n2 = n3
    c = c - 1
  end
  s
end

p fib(12)
