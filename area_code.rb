dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717",
}

def get_city_names(book)
    book.keys
end

def get_area_code(book, key)
    if book.key?(key)
        return "The area code for #{key} is #{book[key]}"
    else
        return "Not a valid city name."
    end
end

loop do
    puts "Do you want to lookup an area code based on a city name? (Y/N)"
    option = gets.chomp.downcase
    break if option != "y"

    puts "Which city do you want the area code for?"
    puts get_city_names(dial_book)
    city = gets.chomp.downcase

    puts get_area_code(dial_book, city)
end