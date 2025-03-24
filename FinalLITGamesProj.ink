Welcome to Combat Cupcake Chef
* Start -> intro

==intro==
Welcome Chef!
Your cupcake faceoff starts in 20 minutes. 
Get to work and get going!
->bake_cupcakes

==bake_cupcakes==
The last batch is in the oven!
But there's still lots of time til its fully baked
Will you take them out early?
->yes_outEarly

==yes_outEarly==
Let's go chef!
->vehicle_choices

==vehicle_choices==
How are you getting to the competition? 
It's all the way across town!
*Car->Car
*Bike->Bike
*Trike->Trike
*Walk->Walk
*Steal a Truck->Steal_Car


==Car==
Nothing new. Just your ancient car, ready to be revved up!

==Bike==
Well! Two wheels! Two feet! What could go wrong?

==Trike==
I guess three wheels are faster than two? We'll find out!
==Walk==
Get to stepping!

==Steal_Car==
Your neighbor probably won't miss their truck too much anyway!


==Red_Light_MobileVehicle==
Red Light! Run it? 
*Yes
*No

==Red_Light_NonAuto==
Does running a red light even count if youre not diriving?

===BananaPeel==
Whoops! Your cupcakes??? Everything fell. Where did that banana peel even come from? 


    -> END
