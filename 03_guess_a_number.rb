number = rand(100)
guesses = 15

puts "I'm thinking of a number between 0 and 100."

loop do
  if guesses == 0
    puts "You lose :-("
    exit
  end

  puts "Enter your guess (#{guesses} guesses left):"
  guess = gets.chomp.to_i

  guesses = guesses - 1

  if guess > number
    puts "Too high."
  elsif guess < number
    puts "Too low."
  elsif guess == number
    puts "You win!"
    exit
  end
end
