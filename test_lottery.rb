require "minitest/autorun"
require_relative "lottery.rb"

class TestLottery < Minitest::Test

	def test_1st_entry_not_array_returns_error
		assert_equal("Error, 1st entry must be an Array of numbers",winning__numbers_array(12345,['1234','1235','1236','1234']))
	end

	def test_2nd_entry_not_array_returns_error
		assert_equal("Error, 2nd entry must be an Array of numbers",winning__numbers_array(['1234','1235','1236','1234'],12345))
	end

	def test_not_4_digit_entries_in_array1
		assert_equal("Error, entries must be 4 digits", winning__numbers_array([1234,12345,1234], [1234,1234,1234]))
	end

	def test_not_4_digit_entries_in_array2
		assert_equal("Error, entries must be 4 digits", winning__numbers_array([1234,1234,1234], [1234,12345,1234]))
	end

	def test_array1_entries_not_fix_nums_returns_errors
		assert_equal("Error, array entries must be Fixed 4 digit numbers", winning__numbers_array([1234, "Hello", '1234'], [1234,1234,1234]))
	end

	def test_array2_entries_not_fix_nums_returns_errors
		assert_equal("Error, array entries must be Fixed 4 digit numbers", winning__numbers_array([1234,1234,1234], [1234, "Hello", '1234']))
	end

	def test_working_condition
		assert_equal([1234,9999,5678],winning__numbers_array([1234,8888,7654,9999,4321,5678],[1234,4325,2345,9999,6789,5678]))
	end

	def test_1st_entry_not_array_returns_error_one_off
		assert_equal("Error, 1st entry must be an Array of numbers",winning__numbers_array(12345,['1234','1235','1236','1234']))
	end

	def test_2nd_entry_not_array_returns_error_one_off
		assert_equal("Error, 2nd entry must be an Array of numbers",winning__numbers_array(['1234','1235','1236','1234'],12345))
	end

	def test_not_4_digit_entries_in_array1_one_off
		assert_equal("Error, entries must be 4 digits", winning__numbers_array([1234,12345,1234], [1234,1234,1234]))
	end

	def test_not_4_digit_entries_in_array2_one_off
		assert_equal("Error, entries must be 4 digits", winning__numbers_array([1234,1234,1234], [1234,12345,1234]))
	end

	def test_array1_entries_not_fix_nums_returns_errors_one_off
		assert_equal("Error, array entries must be Fixed 4 digit numbers", winning__numbers_array([1234, "Hello", '1234'], [1234,1234,1234]))
	end

	def test_array2_entries_not_fix_nums_returns_errors_one_off
		assert_equal("Error, array entries must be Fixed 4 digit numbers", winning__numbers_array([1234,1234,1234], [1234, "Hello", '1234']))
	end

	def test_working_condition_losing_numbers
		assert_equal([1235,9998,5679],one_off_array([1234,8888,7654,9999,4321,5678],[1235,4325,2345,9998,6789,5679]))
	end

	def test_1st_entry_not_array_returns_error_losing_numbers
		assert_equal("Error, 1st entry must be an Array of numbers",losing_numbers_array(12345,['1234','1235','1236','1234']))
	end

	def test_2nd_entry_not_array_returns_error_losing_numbers
		assert_equal("Error, 2nd entry must be an Array of numbers",losing_numbers_array(['1234','1235','1236','1234'],12345))
	end

	def test_not_4_digit_entries_in_array1_losing_numbers
		assert_equal("Error, entries must be 4 digits", losing_numbers_array([1234,12345,1234], [1234,1234,1234]))
	end

	def test_not_4_digit_entries_in_array2_losing_numbers
		assert_equal("Error, entries must be 4 digits", losing_numbers_array([1234,1234,1234], [1234,12345,1234]))
	end

	def test_array1_entries_not_fix_nums_returns_errors_losing_numbers
		assert_equal("Error, array entries must be Fixed 4 digit numbers", losing_numbers_array([1234, "Hello", '1234'], [1234,1234,1234]))
	end

	def test_array2_entries_not_fix_nums_returns_errors_losing_numbers
		assert_equal("Error, array entries must be Fixed 4 digit numbers", losing_numbers_array([1234,1234,1234], [1234, "Hello", '1234']))
	end

	def test_working_condition_losing_numbers
		assert_equal([4325,2345,6789],losing_numbers_array([1234,8888,7654,9999,4321,5678],[1234,4325,2345,9999,6789,5678]))
	end
end