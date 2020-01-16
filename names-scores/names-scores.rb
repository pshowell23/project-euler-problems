file_data = File.read('names.txt').split(',').sort

def get_alphabetical_value(name)
    alphabet = {
        'A' => 1,
        'B' => 2,
        'C' => 3,
        'D' => 4,
        'E' => 5,
        'F' => 6,
        'G' => 7,
        'H' => 8,
        'I' => 9,
        'J' => 10,
        'K' => 11,
        'L' => 12,
        'M' => 13,
        'N' => 14,
        'O' => 15,
        'P' => 16,
        'Q' => 17,
        'R' => 18,
        'S' => 19,
        'T' => 20,
        'U' => 21,
        'V' => 22,
        'W' => 23,
        'X' => 24,
        'Y' => 25,
        'Z' => 26
    }
    name_array = name.split('') - ["\""]
    sum = 0
    name_array.each {|x| sum += alphabet[x]}
    sum
end

def names_scores(names)
    sum = 0
    for index in 0...names.length
        alphabetical_position = index + 1
        alphbetical_value = get_alphabetical_value(names[index])
        sum += (alphabetical_position * alphbetical_value)
    end
    "The total names score for the names suppied is #{sum}."
end

puts names_scores(file_data) #Answer 871,198,282
