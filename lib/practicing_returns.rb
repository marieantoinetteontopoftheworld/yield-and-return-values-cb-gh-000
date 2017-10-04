require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i]) # returns block exectution
    i += 1
  end
  collection
  binding.pry
end

hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
