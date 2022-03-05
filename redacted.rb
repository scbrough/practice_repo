puts "What would you like to send? "
text = gets.chomp.downcase

puts "What part of that would you like to hide?(separated by commas please.) "
redact = gets.chomp.downcase

redacted_words = redact.split(",")

words = text.split(" ")
final = ""
words.each do |word|
  if redacted_words.include? "#{word}"
    final += "REDACTED "
  else  
    final += "#{word} "
  end
end
print "#{final}"