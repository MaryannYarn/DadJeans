# DadJeans
## Maryann Foley, Shruthi Venkata, Jessica Wu

## A Day in the Dog Park
_**Game Description**_

*A Day in the Dog Park* is a standard RPG visualized through Processing. Your character is a dog who is taking a stroll around the neighborhood dog park with your dog walker. Your walker leaves the dogs unattended for a second, and suddenly accidentally sets all the dogs loose! Soon, the dogs' owners are waiting at the local pet shelter, worried sick and hoping their lost pets will eventually be found and brought in safely. You must go on a quest to collect and retrieve your fellow dogs to the shelter, on the way defeating numerous enemies.
As you fight the enemies, you are given various different moves that you can use on them (bite, charm, bark, pounce). Each time you defeat an enemy, you will have found a lost dog that you can then add to your team. In future battles, you may use any of the dogs from your team. After being able to view your enemies' stats, you are given the option of whether to use the most agile, most loud, most powerful, and most cute dog to use next. Certain attacks would cause more damage to certain enemies. As you move onto the next enemy, it gets gradually harder to defeat them.
When you have defeated every enemy, you have retrieved all the lost dogs and have won the game!
If the dog you have chosen to choose was to get defeated, then you lose the game :(

_**How It Works**_
* We used a stack to organize the enemies
* Each enemy is an extension of the Enemy abstract class
* Each type of attack (bite, bark, etc.) have different effects on the enemy, so charm may not be the best choice for an enemy with a high limit for cuteness
* When the user is given the option to pick the most agile, loud, etc. dog, we put all the dogs into respective different max heaps for each category and take the dog at the root of whichever one the user picks
* After a player beats an enemy, a new dog with a random name and stats will be added on to the team as described previously
* console instructions are a key part to understanding the game, so pay attention to them!

_**Launch Instructions**_
1. Clone our repo
~~~~
$ git clone git@github.com:https://github.com/MaryannYarn/DadJeans.git
~~~~
2. Run in Processing Driver.pde from DadJeans/Driver directory
3. Begin game by following instructions on console!
