# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each { |x| sum += x }
  return sum
end

def max_2_sum arr
    max_2_sum = 0
    max_2_sum = sum(arr.max(2))
    return max_2_sum
end

def sum_to_n? arr, n
    sum_to_n = false
    if arr.length > 1
	    sum_to_n = false
        for x in 0..(arr.length - 2)
            for y in 0..(x - 1)
                if (arr[x] + arr[y]) === n
                    sum_to_n = true
                end
            end
            for z in (x + 1)..(arr.length - 1)
                if (arr[x] + arr[z]) === n
                    sum_to_n = true
                end
            end
        end
    end
    return sum_to_n
end

# Part 2

def hello(name)
    hello = "Hello, " + name
    return hello
end

def starts_with_consonant? s
    cons = "bcdfghjklmnpqrstvwxyz"
    starts_with_consonant = false
    cons.split("").each { |x| starts_with_consonant = starts_with_consonant || (x === s[0,1].downcase) }
    return starts_with_consonant
end

def binary_multiple_of_4? s
    binary_multiple_of_4 = false
    if (s.size > 0 && s.count('01') == s.size)
        i = s.to_i(2)
        j = 0
        while 4*j <= i
            if 4*j == i
                binary_multiple_of_4 = true
            end
            j += 1
        end
    end
    return binary_multiple_of_4
end

# Part 3

class BookInStock
    def initialize (i, p)
        if (i.size == 0) # || i.count('0123456789-') != i.size)
            raise ArgumentError.new("ISBN can't be blank") # and may only have numbers and hyphens.")
        else
            @isbn = i
        end
        if (p <= 0)
            raise ArgumentError.new("Price must be greater than 0.")
        else
            @price = p
        end
    end
    
    def isbn
        @isbn
    end
    def price
        @price
    end
    
    def isbn=(ni)
        if (ni.size == 0) # || i.count('0123456789-') != i.size)
            raise ArgumentError.new("New ISBN can't be blank") # and may only have numbers and hyphens.")
        else
            @isbn = ni
        end
    end
    def price=(np)
        if (np <= 0)
            raise ArgumentError.new("New price must be greater than 0.")
        else
            @price = np
        end
    end
    
    def price_as_string
        "$" + sprintf("%.2f", price)
    end
end
