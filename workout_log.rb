personal_record = {
  squat: 335
}

puts "What would you like to do?"
puts "add"
puts "update"
puts "delete"
puts "display"

choice = gets.chomp 

case choice
when "add"
  puts "What is the lift?"
  lift = gets.chomp 
  
  if personal_record[lift.to_sym] == nil
    puts "What is your current record?"
    record = gets.chomp
    
    personal_record[lift.to_sym] = record.to_i
    puts "Congratulations! You have added #{lift} to data base with record of #{record} pounds."
  
  else  
    puts "This lift has already been entered, please use 'update'."
  end

when "update"
  puts "What is the lift you would like to update?"
  lift = gets.chomp
  
  if personal_record[lift.to_sym] == nil
    puts "This lift has never been recorded, please use 'add'."
  else  
    puts "What is new record?"
    record = gets.chomp
    personal_record[lift.to_sym] = record.to_i
    
    puts "Congratulations! You have updated #{lift} with a record of #{record}!"
  end

when "delete"
  puts "What lift would you like to delete?"
  lift = gets.chomp
  
  if personal_record[lift.to_sym] == nil
    puts "There is no such lift in this database"
  else  
    personal_record.delete(lift.to_sym)
    puts "Record has been deleted!"
  end
  
when "display"
  personal_record.each {|lift, record| puts "#{lift}: #{record}"}
else  
  puts "You have not selected one of the choices."
end