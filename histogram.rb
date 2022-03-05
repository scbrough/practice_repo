puts "What text would you like to analyze?"
text = gets.chomp 

words = text.split(" ")

#created hash with default of 0
frequencies = Hash.new(0)

#add 1 to each word in frequencies hash
words.each do |word|
  frequencies[word] += 1
end

#sort words from highest to lowest frequency
frequencies = frequencies.sort_by do |word, count|
  count
end
frequencies.reverse!

#print each word with it's count 
frequencies.each do |word, count|
  puts "#{word} #{count.to_s}"
end


