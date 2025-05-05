VAR cupcakeFlavor = ""
VAR timeRemaining = 5

->INTRO

== INTRO ==
Welcome to *Combat Cupcake Chef!* :
The fiercest, frostiest, most legally questionable cupcake competition in the world.  
Race to get your cupcakes out of the oven and your behind to the judge’s panel in time.  

Don’t forget to eat well and prosper. There’s always money in the banana stand. May the odds be ever in your flavor. Time’s a tickin’!

-> choose_flavor

== choose_flavor ==
Pick your cupcake flavor:
* Nutella
    Nutella: Tastes like eating your feelings and pretending that it’s healthy. At least Nutella is a nut and that’s a major food group, right?
    ~ cupcakeFlavor = "nutella"
    -> take_out_of_oven
* Birthday Cake
    Birthday Cake: Tastes like nostalgia and crying over moving out of your parents' house.
    ~ cupcakeFlavor = "birthday"
    -> take_out_of_oven
* Banana Split
    Banana Split: Tastes like a slippery slope (hopefully to victory). Better watch out: Sometimes bananas are exactly what you think they are.
    ~ cupcakeFlavor = "banana"
    -> take_out_of_oven
* Red Velvet
    Red Velvet: Tastes like a breakup. Why else would you ever make this monstrosity? Are you doing okay? Come get some sugar, I guess.
    ~ cupcakeFlavor = "red"
    -> take_out_of_oven

== take_out_of_oven ==
Time to go. The cupcakes are... looking lovely? Possibly underbaked. Possibly perfect.  
Do you take them out now?

* Yes  
    Because rules are for people who don’t believe in raw batter and blind confidence.  
    -> choose_vehicle
* No  
    Because what’s one more minute in the oven? (Besides, who ever died from a little raw egg?)  
    Salmonella is fake news and a government hoax, don’t worry.  
    ~ timeRemaining = timeRemaining - 1
    -> choose_vehicle

== choose_vehicle ==
Let's hit the road, Jack! Or whatever your name is.  
Anyway, just don’t be an idiot sandwich. What’s your getaway car (or bike) of choice?

* Your 1963 Pontiac Tempest  
    Your cousin Vinny’s car? His client’s? I don't know. I hear it’s nothing like the ‘64 Buick Skylark but it’ll have to do.  
    -> red_light
* A fancy unlocked car in the parking lot  
    Who’s car is this? I don’t know. “I hate to say it, I hope I don’t sound ridiculous, I don’t know who this man that owns the car is. Sorry to this man.”  
    -> red_light
* Bike  
    Well, if it works for E.T. or those kids from Stranger Things! Wait, didn’t that one kid get abducted on his bike…  
    -> red_light

== red_light ==
Taylor Swift says nothing good starts in a getaway car (or bike).  
But isn’t it just the cherry on top (with sprinkles, too) that there’s a red light with a cop right here?

* Ask the traffic light if it’ll be alright to run it  
    They said "I don’t know."  
    I’ll take that as a yes. Full throttle ahead.  
    -> banana_stand
* Wait  
    This feels like a death (by a thousand cuts) sentence.  
    ~ timeRemaining = timeRemaining - 1
    -> meet_cops

== meet_cops ==
The police officer notices your large suspicious boxes and pulls you over.  
He’s concerned you have a bomb, and the smell of your cupcakes isn’t helping.  
I mean, really, who even bakes {cupcakeFlavor} cupcakes anymore? That’s sooooo 2000-and-late.

~ timeRemaining = timeRemaining - 1
-> banana_stand

== banana_stand ==
Run Forrest, run! Keep up (with the Kardashians) and hurry up.  
Cupcakes wait for no man—except, apparently, for the man selling bananas in a banana suit at a banana stand in the middle of the road.

Oh no! He’s not moving. Is this an *Impractical Jokers* prank?

What do you do?

* BRAKE
    -> offer_cupcake
* Yell
    Hahahahahahahah, You thought you could out-yell a man in a banana suit?  
    Wait—that worked? Wow.  
    ~ timeRemaining = timeRemaining - 2
    -> judge_results
* Politely request he move  
    The man is so grateful you’re here, he refuses to let you go.  
    Enjoy his TED Talk on the coming Banana Rebellion.  
    ~ timeRemaining = timeRemaining - 4
    -> judge_results
* Run him and the stand over  
    Well, now you’ve ruined the cupcakes... and this man’s life and livelihood.  
    Also, broke your own leg. And really, what were you thinking?  
    -> END

== offer_cupcake ==
You introduce yourself. “Hello, Mr. Banana-Stand Man.  
Sir, this may be presumptuous of me but… do you like bananas? Because boy do I have the cupcake for you.”

{ cupcakeFlavor == "banana":
    The man drops to the ground in a bow and chants: “The Chosen One!”  At least he moves out of the way? Small wins. 
    ~ timeRemaining = timeRemaining - 1
    -> judge_results
- else:
    He scoffs. "Who cares about your cupcakes?" He asks before holding you hostage for a lecture on the apple uprising and how to survive the Bana-pocalypse.
    ~ timeRemaining = timeRemaining - 5
    -> judge_results
}

== judge_results ==
Congratulations, you have arrived at the Combat Cupcake Chef competition.  
We’ve been expecting you, [Mr. or Mrs.] Baker.

The judges are awaiting your Un-frost-gettable and Sprink-tacular cupcakes.

Meet the judges:
The banana stand man re-emerges... in a full-yellow suit.  
The other two judges are also wearing banana suits. What is going on?

{ cupcakeFlavor == "banana" and timeRemaining > 0:
    [Banana]: There really *is* money in the banana stand. Congratulations!  
    You are this year’s Combat Cupcake Chef Champion!  
    Your prize is a majority share in our banana company.  
    Welcome to the millionaire’s club, you (slum)dog!
    -> END
- else:
    All that effort, and you couldn’t even bake better cupcakes?  
    Our panel will be rewarding another candidate this year.  
    Better luck next time.
    -> END
}

== END ==
Thanks for playing *Combat Cupcake Chef*. Remember:  
Bad ideas make great stories. And sometimes... award-winning cupcakes.
-> END  


