module Numb

	def method_1
		puts "I am number 1"
	end

	def method_2
		puts "I am number 3"
	end

	def method_4
		puts "I am number 4"
	end

end


class Hello
	include Numb
end

number = Hello.new
number.method_1
number.method_2
number.method_4	