def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  rand(1..11)
  # code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  number1 = deal_card
  number2 = deal_card
  sum = number1 + number2
  display_card_total(sum)
  sum
  ## need to make more readable and fix
  # code #initial_round here
end

def hit?(card_total)
  prompt_user
  input = get_user_input
    if input == "h"
      number3 = deal_card
      card_total = card_total + number3
    elsif (input != "s" && input != "h")
      invalid_command
      prompt_user
    else
  end
  card_total
  # code hit? here
end

def invalid_command
  puts "Please enter a valid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    hit?(card_total)
  end
  end_game(card_total)
end
