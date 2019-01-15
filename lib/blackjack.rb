def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!" 
  #end_game here
end


def initial_round
  cardtotal = deal_card + deal_card
    display_card_total(cardtotal)
    cardtotal
end

def invalid_command
 puts "Please enter a valid command"
end


def hit?(cardtotal)
  prompt_user
  input = get_user_input
if input == 's'
  cardtotal = cardtotal
elsif input == 'h'
  cardtotal += deal_card
elsif input != 's' && input != 'h'
  invalid_command
  prompt_user
 end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  cardtotal = initial_round 
until cardtotal > 21
cardtotal = hit?(cardtotal)
display_card_total(cardtotal)
  end
end_game(cardtotal)
end
    
