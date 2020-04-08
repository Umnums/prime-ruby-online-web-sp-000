# Add  code here!
def prime?(num)
  if num == 1 || num <= 0
    return false
  elsif num <= 3
    return true
  elsif (num % 2 == 0 || num % 3 == 0)
    return false
  else
    i = 5
    while i**2 < num
      if num % i == 0
        puts "#{i}"
        return false
      end
      i += 1
    end
    true
  end
end

prime?(11)
