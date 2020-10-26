# Write your rock paper scissors program in this file.

#creating a variable to display the options for a user
options = "Pick one of the 4 options and please make sure to type out the respective number and not the word. 1 (rock)  |  2 (paper)  |  3 (scissors)  |  4 (quit)"

#creating variables for tracking scores
user_score = 0
comp_score = 0

#introduction statements
puts "Welcome to the game RoShamBo! "
puts "This game gives you (the user) the opportunity to play Rock Paper Scissors against a computer."
puts "You have 3 moves to choose from at all times: Rock, Paper and Scissors."

#get user's name
print "Please enter your name: "
name = gets.chomp
puts "Hey #{name}! Let's get started with our game. Good luck!"

puts ""
#random choice for computer play 1
play_one = (1 +rand(3))
puts "I picked my move."
puts ""

# arbritrarily assign a base value
user_input = 0

#loop until user enters the option to quit game
until user_input == 4  do
  puts "#{options}"
  user_input = gets.chomp.to_i
  puts ""
#conditions to check for who won the round
  if(user_input == 1 && play_one == 2)
    puts "#{name} picked Rock and I picked Paper. I win!"
    comp_score += 1;
    puts "Current scores -> Computer: #{comp_score} | #{name}: #{user_score}"
  elsif(user_input == 1 && play_one == 3)
    puts "#{name} picked Rock and I picked Scissors. You win!"
    user_score += 1;
    puts "Current scores -> Computer: #{comp_score} | #{name}: #{user_score}"
  elsif(user_input == 2 && play_one == 1)
    puts "#{name} picked Paper and I picked Rock. You win!"
    user_score += 1;
    puts "Current scores -> Computer: #{comp_score} | #{name}: #{user_score}"
  elsif(user_input == 2 && play_one == 3)
    puts "#{name} picked Paper and I picked Scissors. I win!"
    comp_score += 1;
    puts "Current scores -> Computer: #{comp_score} | #{name}: #{user_score}"
  elsif(user_input == 3 && play_one == 1)
    puts "#{name} picked Scissors and I picked Rock. I win!"
    comp_score += 1;
    puts "Current scores -> Computer: #{comp_score} | #{name}: #{user_score}"
  elsif(user_input == 3 && play_one == 2)
    puts "#{name} picked Scissors and I picked Paper. You win!"
    user_score += 1;
    puts "Current scores -> Computer: #{comp_score} | #{name}: #{user_score}"
  elsif(user_input == 1 && play_one == 1)
    puts "We both picked Rock and tied. No one gets a point."
    puts "Current scores -> Computer: #{comp_score} | #{name}: #{user_score}"
  elsif(user_input == 2 && play_one == 2)
    puts "We both picked Paper and tied. No one gets a point."
    puts "Current scores -> Computer: #{comp_score} | #{name}: #{user_score}"
  elsif(user_input == 3 && play_one == 3)
    puts "We both picked Scissors and tied. No one gets a point."
    puts "Current scores -> Computer: #{comp_score} | #{name}: #{user_score}"
  elsif(user_input == 4)
    puts "#{name} chose to quit the game."
    puts "Final scores -> Computer: #{comp_score} | #{name}: #{user_score}"
    if(user_score > comp_score)
      puts "Congrats #{name}! You beat me."
    elsif(user_score < comp_score)
      puts "Sorry #{name}! unfortunately you didn't beat me this time."
    else
      puts "We tied the game!"
    end
  else
    puts "Invalid entry."
  end
  play_one = user_input
end