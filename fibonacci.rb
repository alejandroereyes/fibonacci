module Fibonacci
  # Both methods return to get that many
  # numbers of the Fibonacci sequence
  module_function

  def fibs(n)
    # iterative soluion
    arr = [0, 1]

    (n - 1).times do
      arr << arr[-2] + arr[-1]
    end
    arr
  end
end
print "Fibonacci.fibs 10 # => "
puts Fibonacci.fibs 10
