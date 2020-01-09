require 'humanize'

def letter_number_counts(x)
    sum = 0
    numbers_to_words(x).each do |num|
        num.split('').each do |char|
            sum += 1 unless char == ' ' || char == '-'
        end
    end
    "The sum of all letters used in the numbers 1 - #{x} is #{sum}"
end

def numbers_to_words(x)
    numbers = []
    number = 1
    x.times do
        numbers << number.humanize
        number += 1
    end
    numbers
end

print letter_number_counts(1000) #Answer: 21,124
