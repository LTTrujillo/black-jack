#
# ### Initialize Black Jack Class
#
class Black_Jack
#
# ### Initialize Decks
#
  def initialize
    @deck = ["2 of spades","3 of spades","4 of spades","5 of spades","6 of spades",
           "7 of spades" ,"8 of spades","9 of spades" ,"10 of spades" ,"jack of spades",
           "queen of spades", "king of spades", "ace of spades" ,
           "2 of clubs","3 of clubs","4 of clubs","5 of clubs","6 of clubs","7 of clubs",
           "8 of clubs","9 of clubs","10 of clubs", "jack of clubs","queen of clubs", "king of clubs","ace of clubs" ,
           "2 of hearts","3 of hearts","4 of hearts" ,"5 of hearts","6 of hearts", "7 of hearts",
           "8 of hearts","9 of hearts","10 of hearts","jack of hearts","queen of hearts", "king of hearts", "ace of hearts",
           "2 of diamonds","3 of diamonds","4 of diamonds","5 of diamonds","6 of diamonds",
           "7 of diamonds" ,"8 of diamonds" ,"9 of diamonds" ,"10 of diamonds","jack of diamonds",
           "queen of diamonds", "king of diamonds", "ace of diamonds"]


    @deckhash = {"2 of spades" => 2,"3 of spades" => 3,"4 of spades" => 4,"5 of spades" => 5,"6 of spades" => 6,
           "7 of spades" => 7,"8 of spades" => 8,"9 of spades" => 9,"10 of spades" => 10,"jack of spades" => 10,
           "queen of spades" => 10, "king of spades" => 10, "ace of spades" => 1,
           "2 of clubs" => 2,"3 of clubs" => 3,"4 of clubs" => 4,"5 of clubs" => 5,"6 of clubs" => 6,"7 of clubs" => 7,
           "8 of clubs" => 8,"9 of clubs" => 9,"10 of clubs" => 10, "jack of clubs" => 10,"queen of clubs" => 10, "king of clubs" => 10,"ace of clubs" => 1,
           "2 of hearts" => 2 ,"3 of hearts" => 3,"4 of hearts" => 4,"5 of hearts" => 5,"6 of hearts" => 6,"7 of hearts" => 7,
           "8 of hearts" => 8,"9 of hearts" => 9,"10 of hearts" => 10,"jack of hearts" => 10,"queen of hearts" => 10, "king of hearts" => 10, "ace of hearts" => 1,
           "2 of diamonds" => 2,"3 of diamonds" => 3,"4 of diamonds" => 4,"5 of diamonds" => 5,"6 of diamonds" => 6,
           "7 of diamonds" => 7,"8 of diamonds" => 8,"9 of diamonds" => 9,"10 of diamonds" => 10,"jack of diamonds" => 10,
           "queen of diamonds" => 10, "king of diamonds" => 10, "ace of diamonds" => 1}


  end #end of initialize
#
# ### initialize player hands
#
  def init_player_hands
    @player1_hand = []
    @player2_hand = []
    @player3_hand = []
    @player4_hand = []

  end
#
# ### Initialize Player Hands
#
  def init_dealer_hand
    @dealer_hand = []
  end
#
# ### Shuffle Deck
#
  def card_shuffle
  #card = @deck.fetch(0)
  # $stdout.write("card = #{card}")
    @deck.shuffle!
  # card = @deck.fetch(1)
  # $stdout.write("card = #{card}")
  end # end of card_shuffle
  #
  # ### Deal the Dealer a Card
  #
 def deal_dealer_card
   card = @deck.delete_at(0)
   @dealer_hand.insert(0,card)
   # @dealer_hand.each{|x|print x,"--"}
   # $stdout.write("\n")
 end #end of deal_dealer_card_method
  #
  # ### Dealing Player Cards
  #
 def deal_player_card(current_player)
    card = @deck.delete_at(0)
   if current_player == 0 then
     @player1_hand.insert(0,card)
    # @player1_hand.each {|x|print x,"--" }
   end
   if current_player == 1 then
     @player2_hand.insert(0,card)
    # @player2_hand.each {|x|print x,"--" }
   end
   if current_player == 2 then
      @player3_hand.insert(0,card)
    # @player3_hand.each {|x|print x,"--" }
   end
   if current_player == 3 then
     @player4_hand.insert(0,card)
    # @player4_hand.each {|x|print x,"--" }
   end
   # $stdout.write("\n")
 end # end of dealing player card
 #
 # ### Displaying Dealer Cards
 #
def display_dealer_card
  card = @dealer_hand.fetch(0)
  $stdout.write("Dealer's card #{card} \n")
end
#
# ### Displaying Player Cards
#
 def display_player_card(current_player)
   if current_player == 0 then
     @player1_hand.each {|x|print x,"--" }
   end
   if current_player == 1 then
     @player2_hand.each {|x|print x,"--" }
   end
   if current_player == 2 then
     @player3_hand.each {|x|print x,"--" }
   end
   if current_player == 3 then
     @player4_hand.each {|x|print x,"--" }
   end
   $stdout.write("\n")
 end #end of displaying player card


 #
 # ### resets player's hand
 #
 def reset_players_hand(current_player)
   if current_player == 0 then
     @player1_hand = []
   end
   if current_player == 1 then
     @player2_hand = []
   end
   if current_player == 2 then
     @player3_hand = []
   end
   if current_player == 3 then
     @player4_hand = []
   end
 end # end of reset player's hand

#
# ### Sum of Dealer's Lowest total
#
 def determine_dealers_lowest_total
    sum_of_dealers_hand = 0

     @dealer_hand.each {|x|
     card_value = @deckhash.fetch(x)
     if card_value == 1 then card_value = 11

     end
     sum_of_dealers_hand = sum_of_dealers_hand + card_value
       # $stdout.write("Showing card and value #{x}, #{sum_of_dealers_hand}, #{card_value} \n")
     }

# ### This method returns sum of dealer's hand
   sum_of_dealers_hand = sum_of_dealers_hand + 0
 end #end of add dealer's hand
#
# ### This method returns sum of dealer's best total
#
def determine_dealers_best_total
 # @dealer_hand = ['ace of spades', '5 of spades', '4 of spades', 'ace of diamonds']
 # @player1_hand = ['3 of spades', 'ace of hearts', '4 of spades', 'ace of clubs']
 # @player1_hand = ['ace of clubs', '2 of clubs', 'ace of hearts', '4 of hearts']
 # @dealer_hand = ['king of hearts', '6 of diamonds']
    sum_of_dealers_hand = 0
    number_of_aces_in_hand = 0
  #begin loop adding dealers hand
     @dealer_hand.each {|x|
        card_value = @deckhash.fetch(x)
        if card_value == 1 then #adjust aces to a value of 11
           card_value = 11
           number_of_aces_in_hand = number_of_aces_in_hand + 1
        end #end of ace adjustment
        sum_of_dealers_hand = sum_of_dealers_hand + card_value
      } #end of loop adding dealers hand

       if sum_of_dealers_hand > 21 then #must set one or more aces back to one

         loop do
           if number_of_aces_in_hand == 0 then break end
           sum_of_dealers_hand = sum_of_dealers_hand - 10
           $stdout.write("sum of dealers hand #{sum_of_dealers_hand} :")
           if sum_of_dealers_hand < 22 then break end
           number_of_aces_in_hand = number_of_aces_in_hand - 1
        end #end of loop do
      end #end of sum_of_dealers_hand > 21
       # $stdout.write("Showing card and value #{sum_of_dealers_hand}, #{number_of_aces_in_hand} \n")
# ### this method returns of the dealer's best hand'
  sum_of_dealers_hand = sum_of_dealers_hand + 0

end # end of determine dealers best total
#
# ### Method to sum players to the best total(to account for aces)
#
def determine_players_best_total(current_player)
 # @player1_hand = ['ace of spades', '5 of spades', '4 of spades', 'ace of diamonds']
 # @player1_hand = ['3 of spades', 'ace of hearts', '4 of spades', 'ace of clubs']
 # @player1_hand = ['ace of clubs', '2 of clubs', 'ace of hearts', '4 of hearts']
    sum_of_players_hand = 0
    number_of_aces_in_hand = 0
   if current_player == 0 then

     #begin loop adding players hand
     @player1_hand.each {|x|
        card_value = @deckhash.fetch(x)
        if card_value == 1 then #adjust aces to a value of 11
           card_value = 11
           number_of_aces_in_hand = number_of_aces_in_hand + 1
        end #end of ace adjustment
        sum_of_players_hand = sum_of_players_hand + card_value
      } #end of loop adding players hand

       if sum_of_players_hand > 21 then #must set one or more aces back to one
        loop do
           if number_of_aces_in_hand == 0 then break end
           sum_of_dealers_hand = sum_of_dealers_hand - 10
           $stdout.write("sum of players hand #{sum_of_players_hand} :")
           if sum_of_players_hand < 22 then break end
           number_of_aces_in_hand = number_of_aces_in_hand - 1
        end #end of loop do
      end #end of sum_of_players_hand > 21
   end #end if current player = 0

  if current_player == 1 then

       #begin loop adding players hand
     @player2_hand.each {|x|
        card_value = @deckhash.fetch(x)
        if card_value == 1 then #adjust aces to a value of 11
           card_value = 11
           number_of_aces_in_hand = number_of_aces_in_hand + 1
        end #end of ace adjustment
        sum_of_players_hand = sum_of_players_hand + card_value
      } #end of loop adding players hand

       if sum_of_players_hand > 21 then #must set one or more aces back to one
         loop do
           if number_of_aces_in_hand == 0 then break end
           sum_of_players_hand = sum_of_players_hand - 10
           $stdout.write("sum of players hand #{sum_of_players_hand} :")
           if sum_of_players_hand < 22 then break end
           number_of_aces_in_hand = number_of_aces_in_hand - 1
        end #end of loop do
      end #end of sum_of_players_hand > 21
  end #end if current player = 1

if current_player == 2 then

       #begin loop adding players hand
     @player3_hand.each {|x|
        card_value = @deckhash.fetch(x)
        if card_value == 1 then #adjust aces to a value of 11
           card_value = 11
           number_of_aces_in_hand = number_of_aces_in_hand + 1
        end #end of ace adjustment
        sum_of_players_hand = sum_of_players_hand + card_value
      } #end of loop adding players hand

       if sum_of_players_hand > 21 then #must set one or more aces back to one
          loop do
           if number_of_aces_in_hand == 0 then break end
           sum_of_players_hand = sum_of_players_hand - 10
           $stdout.write("sum of players hand #{sum_of_players_hand} :")
           if sum_of_players_hand < 22 then break end
           number_of_aces_in_hand = number_of_aces_in_hand - 1
        end #end of loop do
      end #end of sum_of_players_hand > 21
 end #end if current player = 2

if current_player == 3 then

       #begin loop adding players hand
     @player4_hand.each {|x|
        card_value = @deckhash.fetch(x)
        if card_value == 1 then #adjust aces to a value of 11
           card_value = 11
           number_of_aces_in_hand = number_of_aces_in_hand + 1
        end #end of ace adjustment
        sum_of_players_hand = sum_of_players_hand + card_value
      } #end of loop adding players hand

       if sum_of_players_hand > 21 then #must set one or more aces back to one
          loop do
           if number_of_aces_in_hand == 0 then break end
           sum_of_players_hand = sum_of_players_hand - 10
           $stdout.write("sum of players hand #{sum_of_players_hand} :")
           if sum_of_players_hand < 22 then break end
           number_of_aces_in_hand = number_of_aces_in_hand - 1
        end #end of loop do
      end #end of sum_of_players_hand > 21

   end #end if current player = 3

# ### This method returns sum of player's best hand
   sum_of_players_hand = sum_of_players_hand + 0



 end #end of sum of player's best hand



#
# ### Sum up of all the player's current hand
#
 def add_players_lowest_hand(current_player)
    sum_of_players_hand = 0

   if current_player == 0 then

     @player1_hand.each {|x|
       card_value = @deckhash.fetch(x)
       sum_of_players_hand = sum_of_players_hand + card_value
       # $stdout.write("Showing card and value #{x}, #{sum_of_players_hand}, #{card_value} \n")
     }
   end #end if current player = 0
   if current_player == 1 then

     @player2_hand.each {|x|
     card_value = @deckhash.fetch(x)
     sum_of_players_hand = sum_of_players_hand + card_value
     # $stdout.write("Showing card and value #{x}, #{sum_of_players_hand}, #{card_value} \n")
     }
   end #end if current player = 1

   if current_player == 2 then

     @player3_hand.each {|x|
     card_value = @deckhash.fetch(x)
     sum_of_players_hand = sum_of_players_hand + card_value
     # $stdout.write("Showing card and value #{x}, #{sum_of_players_hand}, #{card_value} \n")
     }
   end #end if current player = 2

   if current_player == 3 then

     @player4_hand.each {|x|
     card_value = @deckhash.fetch(x)
     sum_of_players_hand = sum_of_players_hand + card_value
     # $stdout.write("Showing card and value #{x}, #{sum_of_players_hand}, #{card_value} \n")
     }
   end #end if current player = 3

# ### This method returns sum of player's hand
   sum_of_players_hand = sum_of_players_hand + 0



 end #end of add player's hand
 #
 # ### this is the beginning of the program
 #

   @bj=Black_Jack.new
   @bj.card_shuffle
   @bj.init_player_hands
   @bj.init_dealer_hand
#
#### code for prompting for number of players
#
 loop do #prompt for number of players

    @num_players = 0
    $stdout.write("Choose how many people want to play 1, 2, 3, 4 or Exit: ")
    answer = $stdin.gets.chomp.capitalize
    puts ("You said :#{answer}")

      if answer == "Exit" then exit end
      @num_players = answer.to_f
      case @num_players
       when 1...5
        $stdout.write("Your answer has been accepted\n")
        break
      end #end of case

     $stdout.write("Your answer should be between 1 and 4\n")

  end #end prompt for number of players
#
#### code for dealing 2 cards to all the players and the dealer
#
  num_cards_dealt_to_player = 0
  loop do #loop through deal 2 cards
    if num_cards_dealt_to_player == 2 then break end
   # $stdout.write("dealing card number #{num_cards_dealt_to_player + 1} \n")

         current_player = 0
         loop do #loop through number of players
           if current_player == @num_players then break end
          # $stdout.write("To player #{current_player + 1} \n")
           card = @bj.deal_player_card(current_player)
           current_player = current_player + 1
         end #end of loop through current number of player
         # $stdout.write("Dealers Card -- ")
         @bj.deal_dealer_card

      num_cards_dealt_to_player = num_cards_dealt_to_player + 1
    end #end of loop do deal 2 cards
 #
 #### Code to loop through players prompting to hit, stand, or exit
 #

  @bj.display_dealer_card
  current_player = 0
  loop do #loop for all players prompt for hit or stand

    if current_player == @num_players then break end
    $stdout.write("For player #{current_player + 1} \n")

    loop do #prompt for hit or stand
      @bj.display_player_card(current_player)
      $stdout.write("Choose whether you want to Hit, Stand, or Exit: ")
      answer = $stdin.gets.chomp.capitalize
      puts("You said: #{answer}")

      if answer == "Exit" then exit end
      if answer == "Hit" then
        card = @bj.deal_player_card(current_player)

        a = @bj.add_players_lowest_hand(current_player)
        $stdout.write("a = #{a} \n")
        if a > 21 then
          $stdout.write("Player #{current_player + 1} has gone bust \n")
          @bj.reset_players_hand(current_player)
          break
        end # end of if a > 21

        next
      end # end of answer == hit
      if answer == "Stand" then break end
      $stdout.write("You entered a wrong command")

    end # prompt hit or stand

    current_player = current_player + 1

 end #end of loop through current number of player
#
# ### Deal dealer cards until value is > 16
#

loop do #deal dealer card until > 16
   dealers_total = @bj.determine_dealers_best_total
   # $stdout.write("Deal until > 16 #{dealers_total} \n")
   if dealers_total > 16 then break end
   # $stdout.write("To dealer ------")
   @bj.deal_dealer_card

end # end of loop do deal dealer card until > 16
#
# ### test to see if dealer has gone bust
#
dealers_total = @bj.determine_dealers_best_total
 if dealers_total > 21 then
    @bj.init_dealer_hand
    dealers_total = 0
   $stdout.write("Dealer has gone bust #{dealers_total} \n")
end #check if dealer has gone bust
#
# ### loop through current players to determine who wins
#
  $stdout.write("Dealers total #{dealers_total} \n")
  current_player = 0
  loop do #Loop through all player's hands and decide winner'
    if current_player >= @num_players then break end
    # $stdout.write("For player #{current_player + 1} \n")
    players_total = @bj.determine_players_best_total(current_player)
    # $stdout.write("Players total #{players_total} \n")
    if players_total == 0
      $stdout.write("Player #{current_player + 1} Busted! \n")
    elsif players_total == dealers_total
      $stdout.write("Player #{current_player + 1} has a draw! \n")
    elsif players_total > dealers_total
      $stdout.write("Player #{current_player + 1} Wins! \n")
    elsif players_total < dealers_total
      $stdout.write("Player #{current_player + 1} Loses! \n")
    end # end of if players total = dealers total
    current_player = current_player + 1
 end # end of Loop through all player's hands and decide winner'






 $stdout.write("End of dealing all players")



  exit #end of loop and end of program

 end #end of class
