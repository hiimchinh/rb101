even_numbers = (1..99).select { |num| num.even? }
even_numbers.each { |num| puts num }