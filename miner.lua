miner = turtle
x = 0
mined = 0
stop = false
 
function tunnelMaker(wTunnel, lTunnel)
    print("starting...")
    sleep(1)
    term.clear()
    print("digging...")
    miner.dig()
    miner.forward()
    miner.turnLeft()
    for x = 1, lTunnel, 1 do
        for x = 2, wTunnel, 1 do
            miner.dig()
            miner.digUp()
            miner.digDown()
            miner.forward()
        end
        miner.turnRight()
        miner.dig()
        miner.digUp()
        miner.digDown()
        miner.forward()
        miner.turnRight()
        mined = mined + 1

        for x = 2, wTunnel, 1 do
            miner.dig()
            miner.digUp()
            miner.digDown()
            miner.forward()
        end
        miner.turnLeft()
        miner.dig()
        miner.digDown()
        miner.digUp()
        miner.forward()
        miner.turnLeft()
        mined = mined + 1
    end
        print("tunnel completed :)\n")
        mainMenu()
end

function stairMaker(wStairs, lStairs)
    print("starting...")
    sleep(1)
    term.clear()
    print("digging...")          
    miner.dig()
    miner.forward()
    miner.turnLeft()
    for x = 1, lStairs, 1 do
        for blocks = 2, wStairs, 1 do
            miner.dig()
            miner.forward()    
        end
        miner.turnRight()
        miner.dig()
        miner.forward()
        miner.turnRight()

        for blocks = 2, wStairs, 1 do
            miner.dig()
            miner.forward()    
        end
        miner.turnLeft()
        miner.dig()
        miner.forward()
        miner.turnLeft()

        for blocks = 2, wStairs, 1 do
            miner.dig()
            miner.forward()
        end
        miner.turnRight()
        miner.dig()
        miner.forward()
        miner.turnRight()

        for blocks = 2, wStairs, 1 do
            miner.dig()
            miner.forward()
        end
        miner.turnRight()
        miner.forward()
        miner.forward()  
        miner.turnRight()
        miner.digDown()
        miner.down()
    end
    print("stair completed :)")
    mainMenu()
end


function mainMenu()
    print("     --- MENU --- \nchoose wisely \n1 -> stairMaker \n2 -> tunnelMaker \n3 -> area \n4 -> refuel \n5 -> exit")
    option = io.read()
    if option == '1' then
        print("insert the width of the stairs:")
        wStairs = io.read()
        print("insert the length of the stairs:")
        lStairs = io.read()
        stairMaker(wStairs, lStairs)

        elseif option == '2' then
            print("insert the width of the tunnel:")
                wTunnel = io.read()
            print("insert the length of the tunnel:")
                length = io.read()
                    lTunnel = length / 2
                    tunnelMaker(wTunnel, lTunnel)

        elseif option == '3' then
            print("insert the width of the area:")
            wTunnel = io.read()
            print("insert the length of the area:")
            length = io.read()
                    lTunnel = length / 2
                    tunnelMaker(wTunnel, lTunnel)
        elseif option == '4' then
            miner.refuel()
            print("fuel added successully!")
            mainMenu()
        elseif option == '5' then
            print("sorry for being useless ;-;")
        else
            print("What's your problem?? It's 1 or 2!!")
    end 
end

mainMenu()

