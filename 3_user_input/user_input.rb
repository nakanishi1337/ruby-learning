# get the number from the user
# compare it to a random number and return number is bigger, smaller or equal to the random number

puts "Enter a number between 0 and 9:"
user_input = gets.chomp.to_i
random_number = rand(0..9)
if user_input < random_number
  puts "Your number is smaller than the random number #{random_number}."
elsif user_input > random_number
  puts "Your number is bigger than the random number #{random_number}."
else
  puts "You guessed the random number #{random_number}!"
end