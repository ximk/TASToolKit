local core = {}

package.path = GetScriptsDir() .. "MKW/MKW_Pointers.lua"
local Pointers = require("MKW_Pointers")

local function getCourseSlot()
  local address = Pointers.getRaceDataPointer()
  if ReadValue32(address, 0xb68) == 0 then return "MC"
  elseif ReadValue32(address, 0xb68) == 1 then return "MMM"
  elseif ReadValue32(address, 0xb68) == 2 then return "MG"
  elseif ReadValue32(address, 0xb68) == 3 then return "GV"
  elseif ReadValue32(address, 0xb68) == 4 then return "TF"
  elseif ReadValue32(address, 0xb68) == 5 then return "CM"
  elseif ReadValue32(address, 0xb68) == 6 then return "DKS"
  elseif ReadValue32(address, 0xb68) == 7 then return "WGM"
  elseif ReadValue32(address, 0xb68) == 8 then return "LC"
  elseif ReadValue32(address, 0xb68) == 9 then return "DC"
  elseif ReadValue32(address, 0xb68) == 10 then return "MH"
  elseif ReadValue32(address, 0xb68) == 11 then return "MT"
  elseif ReadValue32(address, 0xb68) == 12 then return "BC"
  elseif ReadValue32(address, 0xb68) == 13 then return "RR"
  elseif ReadValue32(address, 0xb68) == 14 then return "DDR"
  elseif ReadValue32(address, 0xb68) == 15 then return "KC"
  elseif ReadValue32(address, 0xb68) == 16 then return "rPB"
  elseif ReadValue32(address, 0xb68) == 17 then return "rMC"
  elseif ReadValue32(address, 0xb68) == 18 then return "rWS"
  elseif ReadValue32(address, 0xb68) == 19 then return "rDKM"
  elseif ReadValue32(address, 0xb68) == 20 then return "rYF"
  elseif ReadValue32(address, 0xb68) == 21 then return "rDS"
  elseif ReadValue32(address, 0xb68) == 22 then return "rPG"
  elseif ReadValue32(address, 0xb68) == 23 then return "rDS"
  elseif ReadValue32(address, 0xb68) == 24 then return "rMC3"
  elseif ReadValue32(address, 0xb68) == 25 then return "rGV2"
  elseif ReadValue32(address, 0xb68) == 26 then return "rMR"
  elseif ReadValue32(address, 0xb68) == 27 then return "rSL"
  elseif ReadValue32(address, 0xb68) == 28 then return "rBC"
  elseif ReadValue32(address, 0xb68) == 29 then return "rDKJP"
  elseif ReadValue32(address, 0xb68) == 30 then return "rBC3"
  elseif ReadValue32(address, 0xb68) == 31 then return "rSGB"
  end
end
core.getCourseSlot = getCourseSlot

local function getCharacter()
  local address = Pointers.getRaceDataPointer()
  if ReadValue32(address, 0x34) == 0 then return "Mario"
  elseif ReadValue32(address, 0x34) == 1 then return "Baby Peach"
  elseif ReadValue32(address, 0x34) == 2 then return "Waluigi"
  elseif ReadValue32(address, 0x34) == 3 then return "Bowser"
  elseif ReadValue32(address, 0x34) == 4 then return "Baby Daisy"
  elseif ReadValue32(address, 0x34) == 5 then return "Dry Bones"
  elseif ReadValue32(address, 0x34) == 6 then return "Baby Mario"
  elseif ReadValue32(address, 0x34) == 7 then return "Luigi"
  elseif ReadValue32(address, 0x34) == 8 then return "Toad"
  elseif ReadValue32(address, 0x34) == 9 then return "Donkey Kong"
  elseif ReadValue32(address, 0x34) == 10 then return "Yoshi"
  elseif ReadValue32(address, 0x34) == 11 then return "Wario"
  elseif ReadValue32(address, 0x34) == 12 then return "Baby Luigi"
  elseif ReadValue32(address, 0x34) == 13 then return "Toadette"
  elseif ReadValue32(address, 0x34) == 14 then return "Koopa Troopa"
  elseif ReadValue32(address, 0x34) == 15 then return "Daisy"
  elseif ReadValue32(address, 0x34) == 16 then return "Peach"
  elseif ReadValue32(address, 0x34) == 17 then return "Birdo"
  elseif ReadValue32(address, 0x34) == 18 then return "Diddy Kong"
  elseif ReadValue32(address, 0x34) == 19 then return "King Boo"
  elseif ReadValue32(address, 0x34) == 20 then return "Bowser Jr."
  elseif ReadValue32(address, 0x34) == 21 then return "Dry Bowser"
  elseif ReadValue32(address, 0x34) == 22 then return "Funky Kong"
  elseif ReadValue32(address, 0x34) == 23 then return "Rosalina"
  elseif ReadValue32(address, 0x34) == 24 then return "Mii Outfit A (M | Light)"
  elseif ReadValue32(address, 0x34) == 25 then return "Mii Outfit A (F | Light)"
  elseif ReadValue32(address, 0x34) == 26 then return "Mii Outfit B (M | Light)"
  elseif ReadValue32(address, 0x34) == 27 then return "Mii Outfit B (F | Light)"
  elseif ReadValue32(address, 0x34) == 30 then return "Mii Outfit A (M | Medium)"
  elseif ReadValue32(address, 0x34) == 31 then return "Mii Outfit A (F | Medium)"
  elseif ReadValue32(address, 0x34) == 32 then return "Mii Outfit B (M | Medium)"
  elseif ReadValue32(address, 0x34) == 33 then return "Mii Outfit B (F | Medium)"
  elseif ReadValue32(address, 0x34) == 36 then return "Mii Outfit A (M | Heavy)"
  elseif ReadValue32(address, 0x34) == 37 then return "Mii Outfit A (F | Heavy)"
  elseif ReadValue32(address, 0x34) == 38 then return "Mii Outfit B (M | Heavy)"
  elseif ReadValue32(address, 0x34) == 39 then return "Mii Outfit B (F | Heavy)"
  end
end
core.getCharacter = getCharacter

local function getVehicle()
  local address = Pointers.getRaceDataPointer()
  if ReadValue32(address, 0x30) == 0 then return "Standard Kart S"
  elseif ReadValue32(address, 0x30) == 1 then return "Standard Kart M"
  elseif ReadValue32(address, 0x30) == 2 then return "Standard Kart L"
  elseif ReadValue32(address, 0x30) == 3 then return "Booster Seat"
  elseif ReadValue32(address, 0x30) == 4 then return "Classic Dragster"
  elseif ReadValue32(address, 0x30) == 5 then return "Offroader"
  elseif ReadValue32(address, 0x30) == 6 then return "Mini Beast"
  elseif ReadValue32(address, 0x30) == 7 then return "Wild Wing"
  elseif ReadValue32(address, 0x30) == 8 then return "Flame Flyer"
  elseif ReadValue32(address, 0x30) == 9 then return "Cheep Charger"
  elseif ReadValue32(address, 0x30) == 10 then return "Super Blooper"
  elseif ReadValue32(address, 0x30) == 11 then return "Piranha Prowler"
  elseif ReadValue32(address, 0x30) == 12 then return "Tiny Titan"
  elseif ReadValue32(address, 0x30) == 13 then return "Daytripper"
  elseif ReadValue32(address, 0x30) == 14 then return "Jetsetter"
  elseif ReadValue32(address, 0x30) == 15 then return "Blue Falcon"
  elseif ReadValue32(address, 0x30) == 16 then return "Sprinter"
  elseif ReadValue32(address, 0x30) == 17 then return "Honeycoupe"
  elseif ReadValue32(address, 0x30) == 18 then return "Standard Bike S"
  elseif ReadValue32(address, 0x30) == 19 then return "Standard Bike M"
  elseif ReadValue32(address, 0x30) == 20 then return "Standard Bike L"
  elseif ReadValue32(address, 0x30) == 21 then return "Bullet Bike"
  elseif ReadValue32(address, 0x30) == 22 then return "Mach Bike"
  elseif ReadValue32(address, 0x30) == 23 then return "Flame Runner"
  elseif ReadValue32(address, 0x30) == 24 then return "Bit Bike"
  elseif ReadValue32(address, 0x30) == 25 then return "Sugarscoot"
  elseif ReadValue32(address, 0x30) == 26 then return "Wario Bike"
  elseif ReadValue32(address, 0x30) == 27 then return "Quacker"
  elseif ReadValue32(address, 0x30) == 28 then return "Zip Zip"
  elseif ReadValue32(address, 0x30) == 29 then return "Shooting Star"
  elseif ReadValue32(address, 0x30) == 30 then return "Magikruiser"
  elseif ReadValue32(address, 0x30) == 31 then return "Sneakster"
  elseif ReadValue32(address, 0x30) == 32 then return "Spear"
  elseif ReadValue32(address, 0x30) == 33 then return "Jet Bubble"
  elseif ReadValue32(address, 0x30) == 34 then return "Dolphin Dasher"
  elseif ReadValue32(address, 0x30) == 35 then return "Phantom"
  end
end
core.getVehicle = getVehicle

local function getPos()
  local address = Pointers.getPlayerPhysicsPointer(0x0) -- 0x0 first player in the array, to get the most accurate, read playerindex first
  if address == 0 then
    return {X = 0, Y = 0, Z = 0}
  end
  return {X = ReadValueFloat(address, 0x68), Y = ReadValueFloat(address, 0x6C), Z = ReadValueFloat(address, 0x70)}
end
core.getPos = getPos

local function getPosGhost()
  local address = Pointers.getPlayerPhysicsPointer(0x4)
  if address == 0 then
    return {X = 0, Y = 0, Z = 0}
  end
  return {X = ReadValueFloat(address, 0x68), Y = ReadValueFloat(address, 0x6C), Z = ReadValueFloat(address, 0x70)}
end
core.getPosGhost = getPosGhost

local function getPrevPos()
  local address = Pointers.getPlayerPhysicsHolderPointer(0x0)
  if address == 0 then
    return {X = 0, Y = 0, Z = 0}
  end
  return {X = ReadValueFloat(address, 0x18), Y = ReadValueFloat(address, 0x1C), Z = ReadValueFloat(address, 0x20)}
end
core.getPrevPos = getPrevPos

local function getPrevPosGhost()
  local address = Pointers.getPlayerPhysicsHolderPointer(0x4)
  if address == 0 then
    return {X = 0, Y = 0, Z = 0}
  end
  return {X = ReadValueFloat(address, 0x18), Y = ReadValueFloat(address, 0x1C), Z = ReadValueFloat(address, 0x20)}
end
core.getPrevPos = getPrevPos

local function getSpd()
  local PrevXpos = getPrevPos().X
  local PrevYpos = getPrevPos().Y
  local PrevZpos = getPrevPos().Z
  local Xpos = getPos().X
  local Ypos = getPos().Y
  local Zpos = getPos().Z
  return {X = (Xpos - PrevXpos), Y = (Ypos - PrevYpos), Z = (Zpos - PrevZpos), XZ = math.sqrt(((Xpos - PrevXpos)^2) + (Zpos - PrevZpos)^2), XYZ = math.sqrt(((Xpos - PrevXpos)^2) + ((Ypos - PrevYpos)^2) + (Zpos - PrevZpos)^2)}
end
core.getSpd = getSpd

local function getSpdGhost()
  local PrevXpos = getPrevPosGhost().X
  local PrevYpos = getPrevPosGhost().Y
  local PrevZpos = getPrevPosGhost().Z
  local Xpos = getPosGhost().X
  local Ypos = getPosGhost().Y
  local Zpos = getPosGhost().Z
  return {X = (Xpos - PrevXpos), Y = (Ypos - PrevYpos), Z = (Zpos - PrevZpos), XZ = math.sqrt(((Xpos - PrevXpos)^2) + (Zpos - PrevZpos)^2), XYZ = math.sqrt(((Xpos - PrevXpos)^2) + ((Ypos - PrevYpos)^2) + (Zpos - PrevZpos)^2)}
end
core.getSpdGhost = getSpdGhost

local function getInput(buttons)
  local address = Pointers.getInputPointer(0x0) -- change this to 0x4 for ghost
  local offset = 0x8 -- too lazy to adjust the values beneath...

  if address == 0 then return 0
  elseif buttons == "ABLR" then return ReadValue8(address + offset + 0x1)
  elseif buttons == "X" then return ReadValue8(address + offset + 0xC)
  elseif buttons == "Y" then return ReadValue8(address + offset + 0xD)
  elseif buttons == "DPAD" then return ReadValue8(address + offset + 0xF)
  else return 0
end
end
core.getInput = getInput

local function PosToAngle()
  local Xspd = getSpd().X
  if getSpd().X == 0 then Xspd = math.pi / 2
  end
  local angle = math.atan(getSpd().Z * Xspd)
  local finalAngle = angle * 65536 % 360
  local sine = math.sin(finalAngle)
  return {A = finalAngle, S = sine}
end
core.PosToAngle = PosToAngle

local function calculateDirectX()
	local speed_length = 0
	local speed_width = 0
	local cardinal = 0
	local facing_angle = 0
	local facing_rotation = 0
	local py = core.getPos().Y
	local pz = core.getPos().Z
	local prevy = core.getPrevPos().Y
	local prevz = core.getPrevPos().Z

	speed_length = pz - prevz
	speed_width = math.abs(py - prevy)
	cardinal = 0
	facing_angle = math.atan(speed_width/speed_length)
	facing_rotation = facing_angle + cardinal

	if facing_rotation >= 0 and facing_rotation < 90 then
		return facing_rotation
	else
		speed_length = prevy - py
		speed_width = math.abs(pz - prevz)
		cardinal = 90
		facing_angle = math.atan(speed_width/speed_length)
		facing_rotation = facing_angle + cardinal
	end

	if facing_rotation >= 90 and facing_rotation < 180 then
		return facing_rotation
	else
		speed_length = prevz - pz
		speed_width = math.abs(py - prevy)
		cardinal = 180
		facing_angle = math.atan(speed_width/speed_length)
		facing_rotation = facing_angle + cardinal
	end

	if facing_rotation >= 180 and facing_rotation < 270 then
		return facing_rotation
	else
		speed_length = py - prevy
		speed_width = math.abs(pz - prevz)
		cardinal = 270
		facing_angle = math.atan(speed_width/speed_length)
		facing_rotation = facing_angle + cardinal
		return facing_rotation
	end
end

core.calculateDirectX = calculateDirectX

local function calculateDirectY()
	local speed_length = 0
	local speed_width = 0
	local cardinal = 0
	local facing_angle = 0
	local facing_rotation = 0
	local px = core.getPos().X
	local pz = core.getPos().Z
	local prevx = core.getPrevPos().X
	local prevz = core.getPrevPos().Z

	speed_length = pz - prevz
	speed_width = math.abs(px - prevx)
	cardinal = 0
	facing_angle = math.atan(speed_width/speed_length)
	facing_rotation = facing_angle + cardinal

	if facing_rotation >= 0 and facing_rotation < 90 then
		return facing_rotation
	else
		speed_length = prevx - px
		speed_width = math.abs(pz - prevz)
		cardinal = 90
		facing_angle = math.atan(speed_width/speed_length)
		facing_rotation = facing_angle + cardinal
	end

	if facing_rotation >= 90 and facing_rotation < 180 then
		return facing_rotation
	else
		speed_length = prevz - pz
		speed_width = math.abs(px - prevx)
		cardinal = 180
		facing_angle = math.atan(speed_width/speed_length)
		facing_rotation = facing_angle + cardinal
	end

	if facing_rotation >= 180 and facing_rotation < 270 then
		return facing_rotation
	else
		speed_length = px - prevx
		speed_width = math.abs(pz - prevz)
		cardinal = 270
		facing_angle = math.atan(speed_width/speed_length)
		facing_rotation = facing_angle + cardinal
		return facing_rotation
	end
end

core.calculateDirectY = calculateDirectY

local function calculateDirectZ()
	local speed_length = 0
	local speed_width = 0
	local cardinal = 0
	local facing_angle = 0
	local facing_rotation = 0
	local px = core.getPos().X
	local py = core.getPos().Y
	local prevx = core.getPrevPos().X
	local prevy = core.getPrevPos().Y

	speed_length = py - prevy
	speed_width = math.abs(px - prevx)
	cardinal = 0
	facing_angle = math.atan(speed_width/speed_length)
	facing_rotation = facing_angle + cardinal

	if facing_rotation >= 0 and facing_rotation < 90 then
		return facing_rotation
	else
		speed_length = prevx - px
		speed_width = math.abs(py - prevy)
		cardinal = 90
		facing_angle = math.atan(speed_width/speed_length)
		facing_rotation = facing_angle + cardinal
	end

	if facing_rotation >= 90 and facing_rotation < 180 then
		return facing_rotation
	else
		speed_length = prevy - py
		speed_width = math.abs(px - prevx)
		cardinal = 180
		facing_angle = math.atan(speed_width/speed_length)
		facing_rotation = facing_angle + cardinal
	end

	if facing_rotation >= 180 and facing_rotation < 270 then
		return facing_rotation
	else
		speed_length = px - prevx
		speed_width = math.abs(py - prevy)
		cardinal = 270
		facing_angle = math.atan(speed_width/speed_length)
		facing_rotation = facing_angle + cardinal
		return facing_rotation
	end
end

core.calculateDirectZ = calculateDirectZ

--FrameCounter in Race
local function getFrameOfInput()
  return ReadValue32(Pointers.getFrameOfInputAddress())
end
core.getFrameOfInput = getFrameOfInput

function math_atan2(x, y)
	local angle = math.asin( y / math.sqrt(x^2 + y^2 ) )

	if x < 0 then
		angle = math.pi - angle
	elseif y < 0 then
		angle = 2*math.pi + angle
	end

	return angle
end
core.math_atan2 = math_atan2

function getQuaternion()
  local offset2 = 0xF0
  local address2 = Pointers.getPlayerPhysicsPointer(0x0)
  if(address2 == 0) then
    return {X = 0, Y = 0, Z = 0, W = 0}
  end
	return {X = ReadValueFloat(address2, 0xF0), Y = ReadValueFloat(address2, 0xF4),
			Z = ReadValueFloat(address2, 0xF8), W = ReadValueFloat(address2, 0xFC)}
end
core.getQuaternion = getQuaternion

local function calculateEuler()
  local qw = getQuaternion().W
  local qx = getQuaternion().X
  local qy = getQuaternion().Y
  local qz = getQuaternion().Z
  local qw2 = qw*qw
  local qx2 = qx*qx
  local qy2 = qy*qy
  local qz2 = qz*qz
  local test= qx*qy + qz*qw
  if (test > 0.499) then
    Yvalue = 360/math.pi*math_atan2(qx,qw)
    Zvalue = 90
    Xvalue = 0
    return {X = Xvalue, Y = Yvalue, Z = Zvalue}
  end
  if (test < -0.499) then
    Yvalue = -360/math.pi*math_atan2(qx,qw)
    Zvalue = -90
    Xvalue = 0
    return {X = Xvalue, Y = Yvalue, Z = Zvalue}
  end
  local h = math_atan2(2*qy*qw-2*qx*qz, 1-2*qy2-2*qz2)
  local a = math.asin(2*qx*qy + 2*qz*qw)
  local b = math_atan2(2*qx*qw-2*qy*qz, 1-2*qx2-2*qz2)
  Yvalue = (h*180/math.pi)
  Zvalue = (a*180/math.pi)
  Xvalue = (b*180/math.pi)
  return {X = (Xvalue - 90) % 360, Y = (Yvalue - 90) % 360, Z = Zvalue}
end
core.calculateEuler = calculateEuler

local function isSinglePlayer()
  local address = Pointers.getPlayerPhysicsPointer(0x4)
  if address == 0 then return true
  else return false
  end
end
core.isSinglePlayer = isSinglePlayer

local function getDifference()
	local xz = getSpd().XZ
	local player_rotation = calculateEuler().Y
	local px = getPos().X
	local pz = getPos().Z
	local gx = getPosGhost().X
	local gz = getPosGhost().Z
	local prevx = getPrevPos().X
	local prevz = getPrevPos().Z
	local new_rotation = calculateDirectY()

	rotation_id = 0

	if new_rotation >= 0 and new_rotation <  90 then rotation_id = 0
	elseif new_rotation >= 90 and new_rotation < 180 then rotation_id = 1
	elseif new_rotation >= 180 and new_rotation < 270 then rotation_id = 2
	elseif new_rotation >= 270 and new_rotation < 360 then rotation_id = 3
	end

	if rotation_id == 0 then
		length = pz - gz
		width = math.abs(gx - px)
	elseif rotation_id == 1 then
		length = gx - px
		width = math.abs(gz - pz)
	elseif rotation_id == 2 then
		length = gz - pz
		width = math.abs(px - gx)
	elseif rotation_id == 3 then
		length = px - gx
		width = math.abs(pz - gz)
	end

	angle_right = player_rotation - (90*rotation_id)
	angle = math.atan(width/length)
	hypotenuse = math.sqrt(length^2 + width^2)
	angle_left = math.abs(angle - angle_right)
	distance = math.cos(angle_left)*hypotenuse

	return ((distance/xz)/(60))
end
core.getDifference = getDifference

local function getFinishDifference()
    local length = 0
	local zspd = getSpd().Z
	local zpos = getPos().Z
	local ghost_zpos = getPosGhost().Z

    length = zpos - ghost_zpos

    return math.abs((length/zspd)/(60))
end
core.getFinishDifference = getFinishDifference


return core
