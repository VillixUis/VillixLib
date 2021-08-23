  
local Villix = {}

local defaultTheme = {
	SchemeColor = Color3.fromRGB(74, 99, 135),
    Background = Color3.fromRGB(36, 37, 43),
    Header = Color3.fromRGB(28, 29, 34),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(32, 32, 38),
	BackgroundObjectColor = Color3.fromRGB(38,38,38)

}
local styles = {
	  Midnight = {
        SchemeColor = Color3.fromRGB(26, 189, 158),
        Background = Color3.fromRGB(44, 62, 82),
        Header = Color3.fromRGB(57, 81, 105),
        TextColor = Color3.fromRGB(255, 255, 255),
        ElementColor = Color3.fromRGB(52, 74, 95)
    },
	Synapse = {
        SchemeColor = Color3.fromRGB(46, 48, 43),
        Background = Color3.fromRGB(13, 15, 12),
        Header = Color3.fromRGB(36, 38, 35),
        TextColor = Color3.fromRGB(152, 99, 53),
        ElementColor = Color3.fromRGB(24, 24, 24)
    },

	 DarkTheme = {
        SchemeColor = Color3.fromRGB(64, 64, 64),
        Background = Color3.fromRGB(0, 0, 0),
        Header = Color3.fromRGB(0, 0, 0),
        TextColor = Color3.fromRGB(255,255,255),
        ElementColor = Color3.fromRGB(20, 20, 20),
		BackgroundObjectColor = Color3.fromRGB(38,38,38)

	 },
	 LightTheme = {
		SchemeColor = Color3.fromRGB(150, 150, 150),
        Background = Color3.fromRGB(255,255,255),
        Header = Color3.fromRGB(200, 200, 200),
        TextColor = Color3.fromRGB(0,0,0),
        ElementColor = Color3.fromRGB(224, 224, 224),
		BackgroundObjectColor = Color3.fromRGB(38,38,38)

	 },
	 Sentinel = {
		SchemeColor = Color3.fromRGB(230, 35, 69),
        Background = Color3.fromRGB(32, 32, 32),
        Header = Color3.fromRGB(24, 24, 24),
        TextColor = Color3.fromRGB(119, 209, 138),
        ElementColor = Color3.fromRGB(24, 24, 24),
	 }
}

local LibaryName = tostring(math.random(1, 100))..tostring(math.random(1,50))..tostring(math.random(1, 100))
local Debug = true



function Villix:NewLibary(name, theme)


    name = name or "New Libary"


if not theme then
    theme = defaultTheme
            end
            if theme == "DarkTheme" then
                theme = styles.DarkTheme
            elseif theme == "LightTheme" then
                theme = styles.LightTheme
            elseif theme == "Sentinel" then
                theme = styles.Sentinel
            elseif theme == "Synapse" then
                theme = styles.Synapse
            elseif theme == "Midnight" then
                theme = styles.Midnight
            else
                if theme.SchemeColor == nil then
                    theme.SchemeColor = Color3.fromRGB(74, 99, 135)
                elseif theme.Background == nil then
                    theme.Background = Color3.fromRGB(36, 37, 43)
                elseif theme.Header == nil then
                    theme.Header = Color3.fromRGB(28, 29, 34)
                elseif theme.TextColor == nil then
                    theme.TextColor = Color3.fromRGB(255,255,255)
                elseif theme.ElementColor == nil then
                    theme.ElementColor = Color3.fromRGB(32, 32, 38)
                end
            end

    local guiName
    if debug == true then 
        guiName = "Debug"
    else
        guiName = LibaryName
    end

    -- Gui to Lua
-- Version: 3.2

-- Instances:

local RenameThis = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Topbar = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Filler = Instance.new("Frame")
local GuiTtle = Instance.new("TextLabel")
local Sidebar = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Filler_2 = Instance.new("Frame")
local TabContainer = Instance.new("Frame")

local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")
local Containers = Instance.new("Folder")
local Container = Instance.new("ScrollingFrame")

--Properties:

RenameThis.Name = "RenameThis"
RenameThis.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
RenameThis.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = RenameThis
MainFrame.BackgroundColor3 = theme.Background
MainFrame.Position = UDim2.new(0.328971088, 0, 0.294468075, 0)
MainFrame.Size = UDim2.new(0, 757, 0, 482)

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = MainFrame

Topbar.Name = "Topbar"
Topbar.Parent = MainFrame
Topbar.BackgroundColor3 = theme.ElementColor
Topbar.Size = UDim2.new(0, 757, 0, 32)

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = Topbar

Filler.Name = "Filler"
Filler.Parent = Topbar
Filler.BackgroundColor3 = theme.ElementColor
Filler.BorderSizePixel = 0
Filler.Position = UDim2.new(0, 0, 0.625, 0)
Filler.Size = UDim2.new(0, 757, 0, 12)

GuiTtle.Name = "GuiTtle"
GuiTtle.Parent = Topbar
GuiTtle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GuiTtle.BackgroundTransparency = 1.000
GuiTtle.Position = UDim2.new(0.0105680302, 0, 0, 0)
GuiTtle.Size = UDim2.new(0, 319, 0, 32)
GuiTtle.Font = Enum.Font.Gotham
GuiTtle.Text = "GuiTitle"
GuiTtle.TextColor3 = Color3.fromRGB(255, 255, 255)
GuiTtle.TextSize = 15.000
GuiTtle.TextXAlignment = Enum.TextXAlignment.Left

Sidebar.Name = "Sidebar"
Sidebar.Parent = MainFrame
Sidebar.BackgroundColor3 = theme.ElementColor
Sidebar.BorderSizePixel = 0
Sidebar.Position = UDim2.new(0, 0, 0.0663900375, 0)
Sidebar.Size = UDim2.new(0, 136, 0, 450)

UICorner_3.CornerRadius = UDim.new(0, 5)
UICorner_3.Parent = Sidebar

Filler_2.Name = "Filler"
Filler_2.Parent = Sidebar
Filler_2.BackgroundColor3 = theme.ElementColor
Filler_2.BorderSizePixel = 0
Filler_2.Position = UDim2.new(0.786764681, 0, 0, 0)
Filler_2.Size = UDim2.new(0, 29, 0, 450)

TabContainer.Name = "TabContainer"
TabContainer.Parent = Sidebar
TabContainer.BackgroundColor3 = theme.ElementColor
TabContainer.BackgroundTransparency = 1.000
TabContainer.BorderSizePixel = 0
TabContainer.Size = UDim2.new(0, 136, 0, 450)

UIListLayout.Parent = TabContainer
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 4)

UIPadding.Parent = TabContainer
UIPadding.PaddingLeft = UDim.new(0, 5)

Containers.Name = "Containers"
Containers.Parent = MainFrame

Container.Name = "Container"
Container.Parent = Containers
Container.Active = true
Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Container.BackgroundTransparency = 1.000
Container.BorderSizePixel = 0
Container.Position = UDim2.new(0.191545576, 0, 0.0871369317, 0)
Container.Size = UDim2.new(0, 601, 0, 429)


    local Tabs = {}

    function Tabs:NewTab(tabName)
        local TabTemp = Instance.new("TextButton")
        local UICorner_4 = Instance.new("UICorner")
      
      
        TabTemp.Name = "TabTemp"
        TabTemp.Parent = TabContainer
        TabTemp.BackgroundColor3 = theme.SchemeColor
        TabTemp.Position = UDim2.new(0.0367647074, 0, 0, 0)
        TabTemp.Size = UDim2.new(0, 126, 0, 34)
        TabTemp.Font = Enum.Font.Gotham
        TabTemp.Text = "ButtonTemplateText"
        TabTemp.TextColor3 = theme.TextColor
        TabTemp.TextSize = 15.000
        TabTemp.TextWrapped = true
        
        UICorner_4.CornerRadius = UDim.new(0, 5)
        UICorner_4.Parent = TabTemp
        


        TabTemp.MouseButton1Down:Connect(function()

            for i,v in next, Containers:GetChildren() do
                v.Visible = false
            end
            Container.Visible = true 
            print(Container.Name)
        end)
    end
    return Tabs
end
return Villix