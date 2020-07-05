	local ply = FindMetaTable('Player')

	if SERVER then 
		util.AddNetworkString('gayworks.NWTable')
	end

	function ply:SetNWTable(name,tbl)
		self.nwtable = self.nwtable or {}
		self.nwtable[name] = tbl 

		if SERVER then 
			net.Start('gayworks.NWTable')
			net.WriteEntity(self)
			net.WriteString(name)
			net.WriteTable(tbl)
			net.Broadcast()
			end
	end

	function ply:GetNWTable(name)
		return self.nwtable and self.nwtable[name] or {}
		end

	if CLIENT then 
		net.Receive('gayworks.NWTable',function()
			local ply = net.ReadEntity()
			ply.nwtable = ply.nwtable or {}
			ply.nwtable[net.ReadString()] = net.ReadTable()
			end)
	end
