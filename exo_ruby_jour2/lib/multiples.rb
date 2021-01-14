def sum_of_3_or_5_multiples(final_number)
  final_sum = 0 

  (0..final_number).each do |current_number|
    
    def is_multiple_of_3_or_5(current_number)
    
      if current_number % 3 == 0 || current_number % 5 == 0
        final_sum += current_number
      end
    
    end
    
  end
  
  return final_sum
end

=begin
puts is_multiple_of_3_or_5(3)
puts is_multiple_of_3_or_5(5)
puts is_multiple_of_3_or_5(51)
puts is_multiple_of_3_or_5(45)
puts is_multiple_of_3_or_5(2)
puts is_multiple_of_3_or_5(7)
puts is_multiple_of_3_or_5(64)
=end


puts sum_of_3_or_5_multiples(11)
puts sum_of_3_or_5_multiples(9)