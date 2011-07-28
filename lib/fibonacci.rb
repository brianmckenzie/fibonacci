# Let's extend a standard library class, just like in the earlier question...

class Fixnum
  
  # This loops through the sequence of Fibonacci numbers until it finds one that is bigger than the target number, 
  # then returns the previous Fibonacci.
  def closest_fibonacci
    i = 0
    lastfib = 0
    currfib = 0
    until currfib >= self do
      lastfib = currfib
      currfib = fib(i)
      i = i + 1
    end
    return lastfib
  end

  private

  # This returns the Nth number in the Fibonacci sequence
  def fib(n)
    currnum = 0
    nextnum = 1
    n.times do |i|
      currnum, nextnum = nextnum, currnum + nextnum
    end
    return currnum
  end

end