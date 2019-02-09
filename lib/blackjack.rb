def welcome
puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
  # code #deal_card here
  #This method generates and returns a random number between 1 and 11.
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
  #The method should take in an argument of a number that is the card total.
#The method should use puts to output that card total as part of the phrase
#"Your cards add up to #{card total}".
end

def prompt_user
  # code #prompt_user here
  #This method asks the user for input by outputting the phrase
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
  #his method is very basic. It only needs to use the gets method to capture
  #the user's input. Eventually, when we take all of these helper methods and
  #assemble them into the larger method that enacts the game play,
  #this method will be used after we prompt the user for input to
  #actually capture and store their input.
end

def end_game(card_total)
  #This method takes in an argument of a number, which will be a player's
  #card total, and outputs the message
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  display_card_total (card1 + card2)
  card1 + card2
end

  # code #initial_round here
  #This method represents the first round of the game for a given player.
  #It should call on the #deal_card method twice, use
  # the #display_card_total method to puts out the sum and then return the sum.
  #This method will therefore call on two other helper methods,
  #deal_card and #display_card_total, which takes in an argument of the sum
  #of both invocations of #deal_card.

  # code hit? here
#  This method is a bit more complex. It should take in an argument of the player's
#current card total. So, set up your #hit? method to take in an argument of a number.
#hen, the method should use the #prompt_user method to prompt the user for input
#and the #get_user_input method to get and store the user's input. Now we need
#to implement some logic. If the player's input is 's', we don't deal a new card.
#If the player's input is 'h', we do need to deal a new card.
#In this case, use the #deal_card method to deal a new card and increment the
#player's card total by whatever number is returned by #deal_card.
#If the player's input is neither 'h' nor 's', call on the #invalid_command
#method to output the phrase "Please enter a valid command".
#Then, call on the #prompt_user method again to remind your user what a valid command is.
#In either case, our method should then return the player's current card total.
def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == "h"
    return card_total += deal_card
  elsif input == "s"
      return  card_total
  elsif input != "h" || get_user_input != "s"
  puts "Please enter a valid command"
end
end


def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round #score after 1st two cards
  until card_total > 21
  card_total = hit?(card_total) #prompt user for h or s until card totals more than 21
  display_card_total(card_total) #shows user their total
  end
end_game(card_total) #considers card total and outputs game over message
end
