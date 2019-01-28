def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  num = rand(1..11)
  num
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  sum

end

def hit?(sum)
  prompt_user
  user_input = get_user_input

  if user_input == "h"
    sum += deal_card
  elsif user_input == "s"
    sum
  else
    invalid_command

end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command."
  prompt_user
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  blackjack_number = initial_round
  until blackjack_number > 21
    blackjack_number = hit?(blackjack_number)
    display_card_total(blackjack_number)
end
end_game(blackjack_number)
end 
