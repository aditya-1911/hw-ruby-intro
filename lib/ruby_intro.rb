#!/usr/bin/env ruby

def sum arr
  case arr.length
    when 0
      return 0
    when 1
      return arr.first
    else
      elements.reduce 0, :+
  end
end

def max_2_sum (arr)
  # YOUR CODE HERE
  
  if elements.empty?
    return true if total == 0
  else
    elements.combination(2).to_a.each do |pair|
      return true if sum(pair) == total
    end
  end

  return false
end

def sum_to_n? array, val
	array.combination(2).any? { |a, b| a + b == val }
end

def hello(name)
  # YOUR CODE HERE
   "Hello, #{name}"
end

def starts_with_consonant? s
    # YOUR CODE HERE
  if s.empty?
  	return false
  elsif ( /[a-z]/ =~ s[0].downcase && /[^aeiou]/ =~ s[0].downcase)
    return true
  else
    return false
  end
end



def binary_multiple_of_4? (s)
    # YOUR CODE HERE
	return true if s == "0"
	/^[10]*00$/.match(s) != nil
end


class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  
    def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
    end

    def price_as_string
    "$%.2f" % @price
    end

end