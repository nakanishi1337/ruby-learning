# print my names 10 times
i = 0
while i < 10 do
  puts "My name is Alice."
  i += 1
end

# syntax sugar
10.times { puts "My name is Alice." }


# count up 
j = 1
while j <= 10 do
  puts "This is sentence number: #{j}"
  j += 1
end

# syntax sugar
1.upto(10) { |j| puts "This is sentence number: #{j}" }