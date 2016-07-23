require 'pry'
module Fibonacci
  # Both methods return n many numbers
  # of the Fibonacci sequence
  module_function

  def fibs(n)
    # iterative soluion
    return if n < 1
    arr = [0, 1]
    return arr.first if n == 1
    return arr       if n == 2

    (n - 2).times do
      arr << arr[-2] + arr[-1]
    end
    arr
  end

  def fibs_recur(n, arr=[0, 1])
    # recursive solution
    return           if n < 1
    return arr.first if n == 1
    return arr       if n == 2

    arr << arr[-2] + arr[-1]
    fibs_recur n -1, arr
  end
end
puts "Fibonacci.fibs 10 # => #{Fibonacci.fibs 10}"

puts "Fibonacci.fibs_recur 10 # => #{Fibonacci.fibs_recur 10}"
