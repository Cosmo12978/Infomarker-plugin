include("shared.lua")
AddCSLuaFile("cl_init.lua")


util.AddNetworkString("markartextchange")
util.AddNetworkString("markercolor")

net.Receive("markartextchange", function( len )
        local sign = net.ReadEntity()
        local newText = net.ReadString()
        sign:SetRPText(newText)
    end )


--net.Receive("markercolor", function( len )
  --      local signcolor = net.ReadEntity()
    --    local newcolor = net.ReadColor()
      --  local newvectorstore = newcolor:ToVector()
       --signcolor:Setrpcolor(newvectorstore)
    --end )


function ENT:Initialize()
    self:SetRenderMode(RENDERMODE_TRANSALPHA)
    self:DrawShadow(false)
    self:SetModel("models/squad/sf_plates/sf_plate1x1.mdl")
    self:SetMaterial("models/effects/vol_light001")
    self:SetSolid(SOLID_VPHYSICS)
    self:SetCollisionGroup(COLLISION_GROUP_WORLD)
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetUseType(SIMPLE_USE)
    self:SetRPTEXT("PLZWORK")
    local phys = self:GetPhysicsObject()
    if IsValid(phys) then
        phys:EnableMotion(false)
    end
end





