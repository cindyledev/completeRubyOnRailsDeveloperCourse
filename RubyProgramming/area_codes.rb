dial_book = {
  "london" => "226",
  "niagara" => "289",
  "ottawa" => "343",
  "toronto" => "416"
}
 
# Get city names from the hash
def get_city_names(hashbook)
  hashbook.keys
end
 
# Get area code based on given hash and key
def get_area_code(hashbook, city)
  hashbook[city]
end
 
# Execution flow
loop do
  puts "Do you want to lookup an area code based on a city name? (Y/N)"
  answer = gets.chomp.downcase
  break if answer != 'y'
  puts "Which city do you want the area code for?"
  puts get_city_names(dial_book)
  puts "Enter your selection"
  prompt = gets.chomp
  if dial_book.include?(prompt)
    puts "The area code for #{prompt} is #{get_area_code(dial_book, prompt)}"
  else
    puts "You entered a city name not in the dictionary"
  end
end