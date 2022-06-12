package.path = GetScriptsDir() .. "MKW/MKW_Core.lua"
local core = require("MKW_Core")

function onScriptStart()
	MsgBox("Script started.")
	
	startFrame = core.getFrameOfInput()
end

function onScriptCancel()
	MsgBox("Script ended.")
end

function onScriptUpdate()
	local pointer
	if GetGameID() == "RMCP01" then pointer = 0x9C18F8
	elseif GetGameID() == "RMCE01"then pointer = 0x9BD110
	elseif GetGameID() == "RMCJ01" then pointer = 0x9C0958
	elseif GetGameID() == "RMCK01" then pointer = 0x9AFF38
	end
	
	local airtime = ReadValue16(pointer, 0xC, 0x10, 0x0, 0x10, 0x10, 0x21A)
	
	if core.getFrameOfInput() == startFrame then PressButton("A") PressButton("R") SetMainStickX(0)
	elseif core.getFrameOfInput() == startFrame + 1 then PressButton("A") PressButton("R") SetMainStickX(152)
	elseif core.getFrameOfInput() == startFrame + 2 then PressButton("A") PressButton("R") SetMainStickX(0)
	elseif airtime ~= 0 then PressButton("A") PressButton("R") SetMainStickX(0)
	elseif airtime == 0 then PressButton("A") ReleaseButton("R")
	startFrame = core.getFrameOfInput() + 1
	end
end

function onStateLoaded()

end

function onStateSaved()

end
