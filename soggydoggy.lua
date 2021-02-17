-- the dog game from the learn page
-- Soggy Doggy
-- game setup and inputs
-- By Mwgie#8873

-- Players table

local players = { p1name = '', p2name = '', p1n = 0, p2 = 0} 

-- Collecting player information

print('this is only for 2 players at the moment! sorry')

print("whats player 1's name?")

players.p1name = io.read

print("whats player 2s name?")

players.p2name = io.read()

-- Starting the game

print('Click enter to start!')

io.read()

-- the game itself (rewriten, then half rewriten again)

-- Random number generator (from unix time i think)

math.randomseed(os.time())

-- variables

local turnsTaken = 0

local playerWon = false

local whoseTurn = p1

local diceValue = nil

-- if its a draw

local function gameEnd()

print('Everyone got around the lake!')

end

-- funtion if player1 has won

local function p1wins()

print(players.p1name .. ' has won!')

end

-- funtion if player2 has won

local function p2wins()

print(p2name .. ' has won!')

end

-- roll the dice function

local function rollTheDice()

print('Where rolling the dice for you, ' .. whoseTurn .. '!')

diceValue = math.random(6)

if whoseTurn == p1 then 
    if diceValue == 1 then 
        players.p1n = players.p1n - 1 
    elseif diceValue == 2 then 
        players.p1n = players.p1n -2 
    elseif diceValue == 3 then
         players.p1n = players.p1n -3 
    elseif diceValue == 4 then
         players.p1n = players.p1n + 1 
    elseif diceValue == 5 then
         players.p1n = players.p1n + 2 
    elseif diceValue == 6 then
         players.p1n = players.p1n + 3
    end
 end 
 if whoseTurn == p2name then
     if diceValue == 1 then
           players.p2n = players.p2n - 1 
     elseif diceValue == 2 then
           players.p2n = players.p2n -2 
     elseif diceValue == 3 then
           players.p2n = players.p2n -3 
     elseif diceValue == 4 then
           players.p2n = players.p2n + 1 
     elseif diceValue == 5 then
           players.p2n = players.p2n + 2 
     elseif diceValue == 6 then
           players.p2n = players.p2n + 3

         end
end
if whoseTurn == p1 then whoseTurn = p2 else whoseTurn = p2
end
turnsTaken = turnsTaken + 1 


-- checking to see has somone won the game

if players.p1n >= 7 then p2wins() elseif players.p2n >= 7 then p1wins() elseif turnsTaken >= 25 then gameEnd() else rollTheDice()
end


end

rollTheDice()