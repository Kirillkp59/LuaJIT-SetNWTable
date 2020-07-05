local ach = {
	[1] = 'Вутка пидор',
	[2] = 'Рофлан',
	[3] = 'ПК'
}

local ply = {}
function ply:new(nick,steam,r_ach)
	local obj = {}
	obj.nick = nick
	obj.steam = steam
	obj.r_ach = r_ach
	setmetatable(obj,self)
	self.__index = self
	return obj
end
function ply:GetNWTable() return unpack(self.r_ach) end
function ply:SetNWTable(index,value) self.r_ach[index] = value end

local ply = ply:new('bazar','Steam_0030303:2324',ach)

local txt = io.read()

if txt == ach[1] then
	ply:SetNWTable(1,'вутка гей')
	print(ply:GetNWTable())
end
