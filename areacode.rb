

dial_book = {
    'newyork' => '212',
    'newbrunswick' => '732',
    'edison' => '908',
    'plainsboro' => '609',
    'sanfrancisco' => '301',
    'miami' => '305',
    'paloalto' => '650',
    'evanston' => '847',
    'orlando' => '407',
    'lancaster' => '717'
}

def get_area_code(hash,key)
    hash[key]
end

def get_city_names(hash)
    hash.keys
end

answer = nil

loop do 
puts "Do you want to lookup the area code in your city?(Y/N)"
answer = gets.chomp.downcase

if answer == 'y'
    puts 'Which city do you want the area code for?'

    get_city_names dial_book

    puts 'Enter your selection'
    selection = gets.chomp

    puts "The area code for #{selection} is #{get_area_code(dial_book, selection)}"


end
break if answer == 'n'

end
