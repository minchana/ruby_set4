# Create an array of string with one of the values being nil
# Iterate through the array and display the message saying "String is of length -"
# If the value does not have a length raise an exception with appropriate message.

word=["mysore","bangalore","mangalore",nil]

word.each do |i|
	begin
		puts  "#{i.length}"
	rescue Exception =>e
		puts e.message
	end

end