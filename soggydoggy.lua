-- the dog game from the learn page
-- Soggy Doggy
-- game setup and inputs
-- By Mwgie#8873

print('this is only for 2 players at the moment! sorry')

print("whats player 1's name?")

local players = { p1name = '', p2name = '', } 

print("whats player 2s name?")

local  = io.read()

print('Click enter to start!')

io.read()

-- the game itself (rewriten)

-- other stuff

math.randomseed(os.time())

-- variables

local number1 = 0

local number2 = 0

local turnsTaken = 0

local playerWon = false

local whoseTurn = p1name

local diceValue = nil

-- if its a draw

local function gameEnd()

print('Everyone got around the lake!')

end

-- funtion if player1 has won

local function p1wins()

print(p1name .. ' has won!')

end

-- funtion if player2 has won

local function p2wins()

print(p2name .. ' has won!')

end

-- roll the dice function

local function rollTheDice()

print('Where rolling the dice for you, ' .. whoseTurn .. '!')

diceValue = math.random(6)

if whoseTurn == p1name then 
    if diceValue == 1 then 
        number1 = number1 - 1 
    elseif diceValue == 2 then 
        number1 = number1 -2 
    elseif diceValue == 3 then
         number1 = number1 - 3 
    elseif diceValue == 4 then
         number1 = number1 + 1 
    elseif diceValue == 5 then
         number1 = number1 + 2 
    elseif diceValue == 6 then
         number1 = number1 + 3
    end
 end 
 if whoseTurn == p2name then
     if diceValue == 1 then number2 = number2 - 1 elseif diceValue == 2 then number2 = number2 -2 elseif diceValue == 3 then number2 = number2 -3 elseif diceValue == 4 then number2 = number2 + 1 elseif diceValue == 5 then number2 = number2 + 2 elseif diceValue == 6 then number2 = number2 + 3

         end
end
if whoseTurn == p1name then whoseTurn = p2name else whoseTurn = p1name
end
turnsTaken = turnsTaken + 1 


-- checking to see has somone won the game

if number1 >= 7 then p2wins() elseif number2 >= 7 then p1wins() elseif turnsTaken >= 25 then gameEnd() else rollTheDice()
end


end

rollTheDice()