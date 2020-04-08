# Add  code here!
require 'benchmark'
# benchmark method to compare multiple methods
Benchmark.bm do |bm|
  bm.report do
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
    prime?(105557)
  end

    bm.report do
      def prime2?(num)
        if num < 0 or num == 0 or num == 1
          return false
        else
          (2..num-1).to_a.all? do |possible_factor|
            num % possible_factor != 0
          end
        end
      end

      puts prime2?(105557)
    end
  end
#benchmark method to show time for a single method
puts Benchmark.measure{prime?(105557)}
