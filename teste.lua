local w = library:CreateWindow('Main')

w:Section('Pick Your Poison!')

local t = w:Toggle('Auto Rebirth', {flag = "Rebirth"})

spawn( 

    function()

        while wait() do

            if w.flags.Rebirth then

                game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")

            end

        end

    end

)
