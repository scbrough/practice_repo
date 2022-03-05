puts "What is first input? "
string1 = gets.chomp.split(" ")

puts "What is second input? "
string2 = gets.chomp.split(" ")

string3 = string1 + string2

string3.each do |x|
  print x + " "
end