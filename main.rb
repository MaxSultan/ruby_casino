# Group Project Setup

# Only one person needs to create the GitHub repo so choose someone to be the group leader and have them create a repo on GitHub.
# The team lead will need to add the rest of the team as collaborators.
# To do this, click on the settings tab and click on the Collaborators & Teams side menu.
# Add the rest of the team by email or username. 
# Everyone else on the team will need to clone the project to their local computers.
# To do this, go the code (main screen) tab on the repo and click the green clone or download button on the right.
# Make sure the title of new menu says Clone with SSH (if not click the link in the top corner that says use SSH) and grab the link in the text box.
# On your local computer, make sure you are in the current directory you want the project to exist (dpl/week1) and type  git clone [SHH that you copied]
 

# Basic Objectives:

# Start game player has a name and a wallet
# Player can go to different games via menu
# Slots
# High / Low
# Use classes to start the casino, bankroll, and each individual game
# Player places bet and wins / loses (hint: rand)
# The player should have a Wallet and the Wallet should be its own class with remove and add methods (OOP)
# Player's bankroll goes up and down with wins and losses
# Ability to move to and from games

puts "Welcome to the Casino"
puts "what is your name?"
print '>'
name = gets.chomp.to_s
puts "How much cash do you have?"
print '>'
cash = gets.chomp.to_s

cust1 = Player.new(name, cash)