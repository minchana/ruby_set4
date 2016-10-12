 # Print fibonacci series till 7 using ruby.
class Fib

    def number
        fib1 = 0
        fib2 = 1
        num=1
        while num<=7 do
        fib = fib1 + fib2
        puts "the fibonacia serios is #{fib}"
        num=num+1
        fib1=fib2
        fib2=fib
        end
    end
end

f=Fib.new
f.number

# fibonacci series--->0,1,1,2,3,5,8...





# Write a ruby program inorder to check whether the given number is divisible by 5.
# num = gets.to_i
# if num%5==0
# 	puts"divisible"
# else
# 	puts "not divisible"
# end

# Print the present time using ruby.
# time2 = Time.now
# puts "Current Time : " + time2.inspect


