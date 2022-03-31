-- /turpaantuli
local sh1 = -1
local sh2 = -1
local sl1 = -1
local sl2 = -1
Citizen.CreateThread(function()                                                                                                                                                                                                                                                                                                     --Made By SaskaTheBlessed
	while true do
		Wait(1000)
		local p = PlayerPedId()
		local h1 = GetPedPropIndex(p, 0)
		local h2 = GetPedPropTextureIndex(p, 0)
		local l1 = GetPedPropIndex(p, 1)
		local l2 = GetPedPropTextureIndex(p, 1)
		if h1 ~= -1 then
			sh1 = h1
			sh2 = h2
		end
		if l1 ~= -1 then
			sl1 = l1
			sl2 = l2
		end
	end
end)

RegisterCommand('turpaantuli', function()
	local p = PlayerPedId()
	SetPedPropIndex(p,0,sh1,sh2,2)
	SetPedPropIndex(p,1,sl1,sl2,2)
end)