require 'humanize'

def letter_number_counts(x)
    arr = numbers_to_words(x)
    sum = 0
    arr.each {|num| sum += num.length unless num == ' ' || num == '-'}
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

puts letter_number_counts(1000) #Answer: 24,527
