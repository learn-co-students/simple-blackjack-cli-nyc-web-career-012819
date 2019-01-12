def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rando_num = rand(1..11)
  rando_num
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(current)
  prompt_user
  user_choice = get_user_input
  if user_choice == "h"
    thetotal = current + deal_card
  elsif user_choice == "s"
    current
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command" 
  prompt_user
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
thesum = initial_round
until thesum > 21 
thesum = hit?(thesum)
display_card_total(thesum)
end
end_game(thesum)
end

