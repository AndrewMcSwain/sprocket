

def hof(operation, *args)
  operation.call(*args)
end

class Spice

  def apply_math
    -> (fn, *args) { fn.send(*args) }
  end
  def compose(fn) 
    apply_math.curry(fn)
  end
  def add_all(fn, *args)
     r = compose(:+).call(*args)
     yield r
  end
end

curry = Spice.new
result = curry.add_all(1,1,1,1,1)

puts result
