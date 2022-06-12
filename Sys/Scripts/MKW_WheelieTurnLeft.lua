package.path = GetScriptsDir() .. "/MKW/MKW_Core.lua"
local core = require("MKW_Core")

function onScriptStart()
	MsgBox("Script started.")
end

function onScriptCancel()
	MsgBox("Script Ended.")
end

function onScriptUpdate()
	local pointer
	
	if GetGameID() == "RMCP01" then pointer = 0x9C18F8
	elseif GetGameID() == "RMCE01" then pointer = 0x9BD110
	elseif GetGameID() == "RMCJ01" then pointer = 0x9C0958
	elseif GetGameID() == "RMCK01" then pointer = 0x9AFF38
	end

	-- these pointers will be cleaned up later once the new MKW_Pointers file is ready and available to the public
	local speed = ReadValueFloat(pointer, 0x20, 0x0, 0x0, 0x0, 0x14, 0x0, 0x18)
	local topSpeed = speed * 1.15
	local currentSpeed = ReadValueFloat(pointer, 0xC, 0x10, 0x0, 0x10, 0x10, 0x20)
	local turnSpeed = ReadValueFloat(pointer, 0x20, 0x0, 0x0, 0x0, 0x14, 0x0, 0x1c)
	local A3 = ReadValueFloat(pointer, 0x20, 0x0, 0x0, 0x0, 0x14, 0x0, 0x30)
	local handleReact = ReadValueFloat(pointer, 0x20, 0x0, 0x0, 0x0, 0x14, 0x0, 0x54)
	
	if math.min(currentSpeed * (turnSpeed + (1 - turnSpeed)) + A3, topSpeed) == topSpeed then 
		if math.ceil(((1 - ((topSpeed - A3) / topSpeed))/(1 - turnSpeed)) * 7) == 2 then SetMainStickX(104)
		else SetMainStickX(112)
		end
	else
		if math.ceil(((1 - ((topSpeed - A3) / topSpeed))/(1 - turnSpeed)) * 7) == 2 then SetMainStickX(112)
		else SetMainStickX(128)
		end
	end
end

function onStateLoaded()

end

function onStateSaved()

end
