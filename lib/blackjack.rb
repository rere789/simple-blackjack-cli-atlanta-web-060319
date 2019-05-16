def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
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
  input = gets.chomp 
end

def end_game(num)
  # code #end_game here
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
    sum = deal_card + deal_card
    display_card_total(sum)
    return sum 
end

def hit?(current_total)
  # code hit? here
  prompt_user
  input = get_user_input
    if input == "h"
      current_total += deal_card
    elsif input == "s"
      !deal_card
    end
      current_total
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here	  
  welcome
  hand = initial_round
  until hand > 21 do
    hand = hit?(hand)
    display_card_total(hand)
  end
  end_game(hand)
end	
    
