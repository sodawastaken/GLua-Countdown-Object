include("shared.lua")



local time = 1800





timer.Create("update", 0.5, 0, function()

	if time > 0 then

		time = time - 0.5

	end

	counter = string.ToMinutesSeconds( time )


end)







surface.CreateFont( "font_3", {
    font = "Comic Sans MS", --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
    extended = false,
    size = 150,
    weight = 500,
    blursize = 0,
    scanlines = 0,
    antialias = true,
    underline = false,
    italic = false,
    strikeout = false,
    symbol = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
})


function ENT:Draw()

	self:DrawModel()

	local ang = self:GetAngles()

	ang:RotateAroundAxis(self:GetAngles():Right(), 90)
	ang:RotateAroundAxis(self:GetAngles():Forward(), 90)





	cam.Start3D2D(self:LocalToWorld(Vector(-20,0,0)), ang, 0.1)

    	
    	draw.SimpleText(counter, "font_3", 0, 0, Color(255, 255, 255, 255 ),1, 1)

		

	cam.End3D2D()


end