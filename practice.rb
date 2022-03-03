print "What is first variable "
a = gets.chomp 
print "What is second variable "
b = gets.chomp
if a < b 
  puts "First variable is less than second "
elsif b < a 
  puts "Second variable is less than first "     
else
  puts "Variables are equal. "
end
