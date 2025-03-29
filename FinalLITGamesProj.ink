Welcome to Combat Cupcake Chef
* Start
-> intro
VAR vehicleType = "tbd"
VAR autoVehicle = false

==intro==
Welcome Chef!
Your cupcake faceoff begins soon.
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
Keep an eye on the clock!
*Car->Car
*Bike->Bike
*Trike->Trike
*Walk->Walk
*Steal a Truck->Steal_Truck


==Car==
autoVehicle = true
vehicleType = "car"
Nothing new. Just your ancient car, ready to be revved up!
->Arrived_At_Red_Light_

==Bike==
vehicleType="bike"
Well! Two wheels! Two feet! What could go wrong?
->Arrived_At_Red_Light_

==Trike==
vehicleType="trike"
I guess three wheels are faster than two? We'll find out!
->Arrived_At_Red_Light_

==Walk==
vehicleType = "walk"
Get to stepping!
->Arrived_At_Red_Light_

==Steal_Truck==
vehicleType = "truck"
autoVehicle = true
Your neighbor probably won't miss their truck too much anyway!
->Arrived_At_Red_Light_

==Arrived_At_Red_Light_==
Bad timing! A cop and a red light. 
What are you going to do?
{
    -autoVehicle == true:
        ->Red_Light_MobileVehicle
    -autoVehicle == false:
       ->Red_Light_NonAuto
}


==Red_Light_MobileVehicle==
Red Light! Run it? 
*Yes 
{
   - vehicleType == "truck":
        Who cares! It's not like it's your truck anyway.
    - vehicleType == "car":
        Bold move! 
}
*No
    Not in much of a hurry are ya?

==Red_Light_NonAuto==
Does running a red light even count if youre not driving?
{
    - vehicleType=="walk":
        
        
    
    
}

==Cop_Stops_You==
Bad move! The cop car is coming after you.
Double down and speed off?
*Yes
*No
    No way you're getting there in time now. Go to jail (literally).
    ->END

===BananaPeel==
Whoops! Your cupcakes??? Everything fell. Where did that banana peel even come from? 


    -> END
