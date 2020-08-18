AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")


function ENT:Initialize()

	self:SetModel("models/hunter/blocks/cube025x025x025.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetColor(Color(120,255,120))
	self:SetMaterial("models/debug/debugwhite")



	local phys = self:GetPhysicsObject()

	if phys:IsValid() then
		phys:Wake() 

	end



end

if time == 0 then
	for i, ent in ipairs( ents.FindByClass("prop_physics") ) do
   		ent:Ignite(30,1)
	end
end