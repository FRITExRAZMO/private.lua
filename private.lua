--[[
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#=::=*%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@#..:=*%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#-         .-*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@=      :=*@@@@@@@@@@@@@@@@@@@@@@@@#:              .*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@%.          :*%@@@@@@@@@@@@@@@@@@*-       BY         #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@:         .==-..:=*%@@@@@@@@@@@+.        FRITE       =@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@+          #@@@@@#=:  :+#@@@@@@@@#=:                  =@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@.         *@@@@@@@@@@#+=: .-+*%@@@*.               -=#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                                                                   
@+         =@@@@@@@@@@@@@@@@%#+-..:-:               -@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
@         .@@@@@@@@@@@@@@@@@@@@@@@#+:       .    .=%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
+         %@@@@@@@@@@@@@@@@@@@@@@@@@%*--:=:       :=*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
.        +@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.          .-=+#%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.           ++-:  .:=+*#@%@%@@@@@@@@@@@@@@@@@@@@
        :@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.            :%@@@@%*+-:.     .-=#@@@@@@@@@@@@@@@
        +@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%               #@@@@@@@@@@:        .:=+*#%@@@@@@@
        *@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%.               .@@@@@@@@%*.     *%#+=:      .-=+*
        #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#    .            .@#*=-:.       =@@@@@@@@%#*=-.    
        %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-   +*                      .-=#@@@@@@@@@@@@@@@@@%*+
.       %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%:                     :=+#@@@@@@@@@@@@@@@@@@@@@@@@@
=       *@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#-            .@#*#%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
%       -@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%+          :@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@*       %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#           :#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@-      :@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@=             +@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@%.      +@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*.               #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@%       %@@@@@@@@@@@@@@@@@@@@@@@@@@*:                  =@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@+      =@@@@@@@@@@@@@@@@@@@@@@@#=.                     :%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@.     .@@@@@@@@@@@@@@@@@@@@%=.                         .%@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@:     +@@@@@@@@@@@@@@@@@%+.                           -##@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@.    =@@@@@@@@@@@@@@@@*-                               %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@%    =@@@@@@@@@@@@@@@+.                                 +@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@%    @@@@@@@@@@@@@@+.                                   :@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
]]--

local p = game:GetService("Players").LocalPlayer
local g = p:WaitForChild("PlayerGui")
local tw = game:GetService("TweenService")

local s = Instance.new("ScreenGui")
s.Name = "FH_N"
s.ResetOnSpawn = false
s.IgnoreGuiInset = true
s.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
s.Parent = g

local b = Instance.new("Frame")
b.Size = UDim2.new(1, 0, 1, 0)
b.BackgroundTransparency = 1
b.BorderSizePixel = 0
b.ZIndex = 1
b.Parent = s

local bl = Instance.new("BlurEffect")
bl.Size = 32
bl.Parent = game:GetService("Lighting")

local cc = Instance.new("ColorCorrectionEffect")
cc.Saturation = -1
cc.Parent = game:GetService("Lighting")

for i = 1, 200 do
    local sf = Instance.new("Frame")
    sf.Size = UDim2.new(0, math.random(2, 6), 0, math.random(2, 6))
    sf.Position = UDim2.new(math.random(0, 100) / 100, 0, math.random(0, 100) / 100, 0)
    sf.BackgroundColor3 = Color3.new(1, 1, 1)
    sf.BackgroundTransparency = math.random(20, 70) / 100
    sf.BorderSizePixel = 0
    sf.ZIndex = 5
    sf.Parent = b
    
    local sfc = Instance.new("UICorner")
    sfc.CornerRadius = UDim.new(1, 0)
    sfc.Parent = sf
    
    local sp = math.random(15, 35) / 10000
    
    spawn(function()
        while wait(0.01) do
            sf.Position = sf.Position + UDim2.new(0, 0, sp, 0)
            if sf.Position.Y.Scale > 1.1 then
                sf.Position = UDim2.new(math.random(0, 100) / 100, 0, -0.1, 0)
            end
        end
    end)
end

local m = Instance.new("Frame")
m.Size = UDim2.new(0, 700, 0, 620)
m.Position = UDim2.new(0.5, 0, 0.5, 0)
m.AnchorPoint = Vector2.new(0.5, 0.5)
m.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
m.BorderSizePixel = 0
m.ZIndex = 2
m.Parent = s

local mc = Instance.new("UICorner")
mc.CornerRadius = UDim.new(0, 20)
mc.Parent = m

local mg = Instance.new("ImageLabel")
mg.Size = UDim2.new(1, 0, 1, 0)
mg.Position = UDim2.new(0, 0, 0, 0)
mg.BackgroundTransparency = 1
mg.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
mg.ImageColor3 = Color3.new(1, 1, 1)
mg.ImageTransparency = 0.85
mg.ZIndex = 2
mg.Parent = m

local st = Instance.new("UIStroke")
st.Color = Color3.new(1, 1, 1)
st.Thickness = 3
st.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
st.Transparency = 0.3
st.Parent = m

spawn(function()
    while wait(0.05) do
        st.Transparency = 0.3 + math.sin(tick() * 2) * 0.2
    end
end)

local gl = Instance.new("Frame")
gl.Size = UDim2.new(1, 0, 0, 2)
gl.Position = UDim2.new(0, 0, 0, 0)
gl.BackgroundColor3 = Color3.new(1, 1, 1)
gl.BackgroundTransparency = 0.5
gl.BorderSizePixel = 0
gl.ZIndex = 3
gl.Parent = m

local glg = Instance.new("UIGradient")
glg.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(1, 1)}
glg.Parent = gl

local h = Instance.new("Frame")
h.Size = UDim2.new(1, 0, 0, 100)
h.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
h.BorderSizePixel = 0
h.ZIndex = 3
h.Parent = m

local hc = Instance.new("UICorner")
hc.CornerRadius = UDim.new(0, 20)
hc.Parent = h

local hb = Instance.new("Frame")
hb.Size = UDim2.new(1, 0, 0, 50)
hb.Position = UDim2.new(0, 0, 1, -50)
hb.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
hb.BorderSizePixel = 0
hb.ZIndex = 3
hb.Parent = h

local t = Instance.new("TextLabel")
t.Size = UDim2.new(1, 0, 1, 0)
t.BackgroundTransparency = 1
t.Text = "⚠️ FRITE HUB - DISCONTINUED ⚠️"
t.TextColor3 = Color3.new(1, 1, 1)
t.Font = Enum.Font.GothamBold
t.TextSize = 28
t.ZIndex = 4
t.Parent = h

local tst = Instance.new("UIStroke")
tst.Color = Color3.new(0, 0, 0)
tst.Thickness = 2
tst.Parent = t

local d = Instance.new("Frame")
d.Size = UDim2.new(1, -80, 0, 1)
d.Position = UDim2.new(0, 40, 0, 115)
d.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
d.BorderSizePixel = 0
d.ZIndex = 3
d.Parent = m

local f = Instance.new("Frame")
f.Size = UDim2.new(0.88, 0, 0, 160)
f.Position = UDim2.new(0.06, 0, 0, 140)
f.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
f.BorderSizePixel = 0
f.ZIndex = 3
f.Parent = m

local fc = Instance.new("UICorner")
fc.CornerRadius = UDim.new(0, 12)
fc.Parent = f

local fst = Instance.new("UIStroke")
fst.Color = Color3.new(0.4, 0.4, 0.4)
fst.Thickness = 1
fst.Transparency = 0.5
fst.Parent = f

local ft = Instance.new("TextLabel")
ft.Size = UDim2.new(1, -20, 0, 35)
ft.Position = UDim2.new(0, 10, 0, 5)
ft.BackgroundTransparency = 1
ft.Text = "🇫🇷 FRANÇAIS"
ft.TextColor3 = Color3.new(0.9, 0.9, 0.9)
ft.Font = Enum.Font.GothamBold
ft.TextSize = 20
ft.TextXAlignment = Enum.TextXAlignment.Left
ft.ZIndex = 4
ft.Parent = f

local fm = Instance.new("TextLabel")
fm.Size = UDim2.new(1, -20, 1, -45)
fm.Position = UDim2.new(0, 10, 0, 40)
fm.BackgroundTransparency = 1
fm.Text = "FRITE HUB est discontinué. Le créateur de la library/UI a stoppé son projet, tout supprimé/rendu privé, même son AssetID du prefabs. Je n'ai pas vraiment le courage de changer tous les scripts vers une autre UI. J'ai essayé de refaire son prefabs mais je n'ai pas assez de compétence pour ça. Peut-être qu'un jour je vais revenir et tout changer sur une autre lib, mais pas pour le moment."
fm.TextColor3 = Color3.new(0.8, 0.8, 0.8)
fm.Font = Enum.Font.Gotham
fm.TextSize = 14
fm.TextWrapped = true
fm.TextXAlignment = Enum.TextXAlignment.Left
fm.TextYAlignment = Enum.TextYAlignment.Top
fm.ZIndex = 4
fm.Parent = f

local e = Instance.new("Frame")
e.Size = UDim2.new(0.88, 0, 0, 160)
e.Position = UDim2.new(0.06, 0, 0, 315)
e.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
e.BorderSizePixel = 0
e.ZIndex = 3
e.Parent = m

local ec = Instance.new("UICorner")
ec.CornerRadius = UDim.new(0, 12)
ec.Parent = e

local est = Instance.new("UIStroke")
est.Color = Color3.new(0.4, 0.4, 0.4)
est.Thickness = 1
est.Transparency = 0.5
est.Parent = e

local et = Instance.new("TextLabel")
et.Size = UDim2.new(1, -20, 0, 35)
et.Position = UDim2.new(0, 10, 0, 5)
et.BackgroundTransparency = 1
et.Text = "🇬🇧 ENGLISH"
et.TextColor3 = Color3.new(0.9, 0.9, 0.9)
et.Font = Enum.Font.GothamBold
et.TextSize = 20
et.TextXAlignment = Enum.TextXAlignment.Left
et.ZIndex = 4
et.Parent = e

local em = Instance.new("TextLabel")
em.Size = UDim2.new(1, -20, 1, -45)
em.Position = UDim2.new(0, 10, 0, 40)
em.BackgroundTransparency = 1
em.Text = "FRITE HUB is discontinued. The library/UI creator stopped his project, deleted/made everything private, even his prefabs AssetID. I don't really have the courage to change all the scripts to another UI. I tried to recreate his prefabs but I don't have enough skill for that. Maybe one day I'll come back and change everything to another lib, but not for now."
em.TextColor3 = Color3.new(0.8, 0.8, 0.8)
em.Font = Enum.Font.Gotham
em.TextSize = 14
em.TextWrapped = true
em.TextXAlignment = Enum.TextXAlignment.Left
em.TextYAlignment = Enum.TextYAlignment.Top
em.ZIndex = 4
em.Parent = e

local ok = Instance.new("TextButton")
ok.Size = UDim2.new(0, 220, 0, 55)
ok.Position = UDim2.new(0.5, 0, 1, -75)
ok.AnchorPoint = Vector2.new(0.5, 0)
ok.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ok.BorderSizePixel = 0
ok.AutoButtonColor = false
ok.Font = Enum.Font.GothamBold
ok.TextSize = 20
ok.TextColor3 = Color3.fromRGB(100, 100, 100)
ok.ZIndex = 4
ok.Parent = m

local okc = Instance.new("UICorner")
okc.CornerRadius = UDim.new(0, 12)
okc.Parent = ok

local okst = Instance.new("UIStroke")
okst.Color = Color3.fromRGB(60, 60, 60)
okst.Thickness = 2
okst.Parent = ok

local ct = 10

spawn(function()
    while ct > 0 do
        ok.Text = "OK (" .. ct .. "s)"
        wait(1)
        ct = ct - 1
    end
    ok.Text = "OK"
    ok.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    ok.TextColor3 = Color3.new(1, 1, 1)
    okst.Color = Color3.new(1, 1, 1)
    
    spawn(function()
        while wait(0.05) do
            okst.Transparency = math.sin(tick() * 3) * 0.3 + 0.3
        end
    end)
end)

ok.MouseButton1Click:Connect(function()
    if ct == 0 then
        local t2 = tw:Create(m, TweenInfo.new(0.4), {Size = UDim2.new(0, 0, 0, 0)})
        t2:Play()
        wait(0.4)
        bl:Destroy()
        cc:Destroy()
        s:Destroy()
    end
end)

ok.MouseEnter:Connect(function()
    if ct == 0 then
        tw:Create(ok, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(70, 70, 70)}):Play()
    end
end)

ok.MouseLeave:Connect(function()
    if ct == 0 then
        tw:Create(ok, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(50, 50, 50)}):Play()
    end
end)
