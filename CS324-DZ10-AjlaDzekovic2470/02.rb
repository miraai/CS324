def prosta_metoda(message)

  puts "--------------------------------------------------------------"

  if message.empty? || message.nil? || message == " "
    "[PRAZNO] Message empty or nil."

  elsif message.length <= 5
    "[KRATKO] Message length less or equal of 5 characters."

  elsif message.length >= 6 && message.length <= 11
    "[SREDNJE DUGO] Message length between 6 and 11 characters."

  elsif message.length >= 12
    "[DUGO] Message length has more or equal of 12 characters."

  else
    "Message isnt [PRAZNA], [KRATKA], [SREDNJE DUGA], [DUGA]"
  end

end

puts "Enter some string:"
user_input = STDIN.gets.chop
puts prosta_metoda(user_input)