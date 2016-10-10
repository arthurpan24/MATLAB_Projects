function montehallproblem(m)
    success_stay = 0;
    success_switch = 0;
    
    for i = 1:m 
        door_car = randi(3,1);
        if door_car == 1 
            door_reveal = randi(2,1) + 1;
        else 
            door_reveal = 3 - door_car + 2; %Add 2 to to get the other door
        end
        %stay
            if door_car == 1
                success_stay = success_stay + 1;
            end
        %switch
            if door_car == 3 - door_reveal + 2
                success_switch = success_switch + 1;
            end
    end
    probability_stay = success_stay/m;
    probability_switch = success_switch/m;
    fprintf('Probability of scuccess with stay = %f\n', probability_stay);
    fprintf('Probability of scuccess with switch = %f\n', probability_switch);
end
