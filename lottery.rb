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
	final_array2 = Array.new
	one_off = Array.new

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

		for i in 0..(winning_array.length - 1)
			for j in 0..3
				one_off.push(winning_array[i] - 10**j)
				one_off.push(winning_array[i] + 10**j)
			end
		end


		

		#puts one_off

		for i in 0..(participants_array.length - 1)
			if (one_off.include?(participants_array[i]))
				final_array2.push(participants_array[i])
			end
		end

		#print final_array2

		return final_array2
	end
end

def losing_numbers_array(winning_array,participants_array)

	winning_numbers = Array.new
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



		for i in 0..(winning_array.length - 1)
			for j in 0..3
				winning_numbers.push(winning_array[i] - 10**j)
				winning_numbers.push(winning_array[i] + 10**j)
			end
			winning_numbers.push(winning_array[i])
		end

		


		

		for i in 0..(participants_array.length - 1)
			if (winning_numbers.include?(participants_array[i]) == false)
				final_array.push(participants_array[i])
			end
		end

		#puts possible_winning_numbers
		#puts final_array

		return final_array
	end
end