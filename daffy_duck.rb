print "what did you just say "
user_input = gets.chomp 
user_input.downcase!
if user_input.include? "s"
  user_input.gsub!(/s/, "th")
  puts "cbum: #{user_input}"
elsif user_input.length == 0
  puts "Loser you didn't even enter anything"
else
  puts "You will never be cbum"  
end

