if not syn and not (getexecutorname and getexecutorname() == "ScriptWare") then warn"ayo you need syn or scriptware"  return end
loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterConsole.lua"))()

local Settings ={
    ["Adonis"] = getgenv()["AntiCheatSettings"]["Adonis"] or false,
    ["HD Admin"] = getgenv()["AntiCheatSettings"]["HD Admin"] or false,
}

if Settings["Adonis"] then
    local GetFullName = game.GetFullName
    local Hook; 
    Hook = hookfunction(getrenv().require, newcclosure(function(...)
        local Args = {...}

        if not checkcaller() then
            if (GetFullName(getcallingscript()) == ".ClientMover" and Args[1].Name == "Client") then
                print("Anti-Cheat blocked from running, have fun exploiting with method { Require:Adonis|Client }");
                return wait(10e1)
            end
        end

        return Hook(unpack(Args))
    end))
end
if Settings["HD Admin"] then
    local Hook; 
    Hook = hookfunction(getrenv().require, newcclosure(function(...)
        local Args = {...}

        if not checkcaller() then
            if (getcallingscript().Name == "HDAdminStarterPlayer" and Args[1].Name == "MainFramework") then
                print("Anti-Cheat blocked from running, have fun exploiting with method { Require:HDAdmin|MainFramework }");
                return wait(10e1)
            end
        end

        return Hook(unpack(Args))
    end))
end
