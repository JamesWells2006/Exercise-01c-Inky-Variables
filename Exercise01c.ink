/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Variable types: integer, float, boolean
 - Variable assignment
 - Printing variables
 - Variable checking
 
 In the assignment:
 - Add four more knots
 - Assign at least TWO new variables through player choices
 - Print at least one of the variables to the player in a passage
 - Check the value of a variable and have it do something
 
 
 Variable Checking:
 
Equality: "Spot" == "Spot"
Not equality: 1 != 2
Greater: >
Less: <
Great or Equal: >=
Less or equal: <=
 
 
 
 
 
 
*/


VAR health = 5
VAR pet_name = ""
VAR torches = 0
VAR flamethrower = 0
VAR word_food = 0
VAR word_path = 0



-> memory 

== memory ==
Before you stands the caverns of josh. You wish your childhood pet was with you now. The cave might be less intimidating then. What was your pets name?

* [Charlie] 
    ~ pet_name  = "Charlie"
    -> cave_mouth
* [Susan] 
    ~ pet_name  = "Susan"
    -> cave_mouth
* [Spot] 
    ~ pet_name  = "Spot"
    -> cave_mouth



-> cave_mouth

== cave_mouth ==
You are at the enterance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.

You made it to the cave. if only {pet_name} could see you now!

You have {torches} torches

+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west
+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room. 

-> memory2

-> END

== memory2 ==
A vision crosses your mind. You remember what your grandfather had told you about having faith. He said to choose one of the 3 paths and your destiny awaits. If anything comes up out of nowhere, this will help give you faith to cross that boundary. Which path do you take?

* [Courage] 
    ~ word_path  = "Courage"
    -> memory3
* [Hardwork] 
    ~ word_path  = "Hardwork"
    -> memory3
* [Perserverance] 
    ~ word_path  = "Perserverance"
    -> memory3

-> END
    
    == memory3 ==
    
    You suddenly remember the vision. {word_path} will help you cross this boundary!!!
    
Your starting to get really hungry, though it is not relavant. If you start to feel down and something comes up that is not favored. This will help give you motivation to cross that boundary. What food are you most excited to eat when you get back?

* [Cheeseburger] 
    ~ word_food  = "Cheese burger"
    -> problem
* [Hot dog] 
    ~ word_food  = "Hot dog"
    -> problem
* [Mac and cheese] 
    ~ word_food  = "Mac and cheese"
    -> problem

== problem ==
You start walking towards the gold in the distance. {not flamethrower_pickup:There is a flamethrower lying on the floor.} You are starting to doubt yourself.

You suddenly remember how hungry you were! A {word_food} that is awaiting you will help give you motivation!!!

You have a {flamethrower} flamethrower

+ [Walk ahead] -> walk_ahead
+ [Start praying] -> praying
* [Pick up the flamethrower] -> flamethrower_pickup

== walk_ahead ==
You feel as if you are doomed. As your getting closer and eventually meet the destination, you see sharp spikes blocking off the coins!
* {flamethrower_pickup} [ignite flamethrower] -> spikes_melt
+ [Go Back] -> problem
-> END

== praying ==
You feel as if your prayer was not answered.
+ [Go Back] -> problem
-> END

=== flamethrower_pickup ===
You now have a flamethrower. May it become very useful.
* [Go Back] -> problem
-> END

== spikes_melt ==
The heat of your flamethrower melts off the thousands of spikes blocking off the coins!!!
-> DONE






