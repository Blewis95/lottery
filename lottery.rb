def winning__numbers_array(winning_array,participants_array)
	final_array = Array.new

	if winning_array.class != Array
		return "Error, 1st entry must be an Array of numbers"
	elsif participants_array.class != Array
		return "Error, 2nd entry must be an Array of numbers"
	else
	

		winning_array.each do |x|
	
			element1 = x

			if (x.class != Fixnum)
				return "Error, array entries must be Fixed 4 digit numbers"
			elsif ((element1 % 10000) != x )
				return "Error, entries must be 4 digits"
			end

		end


		participants_array.each do |x|
	
			element2 = x

			if (x.class != Fixnum)
				return "Error, array entries must be Fixed 4 digit numbers"
			elsif ((element2 % 10000) != x )
				return "Error, entries must be 4 digits"
			end			

		end

		for i in 0..(participants_array.length - 1)
			if (winning_array.include?(participants_array[i]))
				final_array.push(participants_array[i])
			end
		end

		#puts final_array

		return final_array
	end
end

def one_off_array(winning_array,participants_array)
	final_array = Array.new

	if winning_array.class != Array
		return "Error, 1st entry must be an Array of numbers"
	elsif participants_array.class != Array
		return "Error, 2nd entry must be an Array of numbers"
	else
	

		winning_array.each do |x|
	
			element1 = x

			if (x.class != Fixnum)
				return "Error, array entries must be Fixed 4 digit numbers"
			elsif ((element1 % 10000) != x )
				return "Error, entries must be 4 digits"
			end

		end


		participants_array.each do |x|
	
			element2 = x

			if (x.class != Fixnum)
				return "Error, array entries must be Fixed 4 digit numbers"
			elsif ((element2 % 10000) != x )
				return "Error, entries must be 4 digits"
			end			

		end

		for i in 0..(participants_array.length - 1)
			if (winning_array.include?(participants_array[i]))
				final_array.push(participants_array[i])
			end
		end

		#puts final_array

		return final_array
	end
end