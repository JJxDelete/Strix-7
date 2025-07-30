local gameTitle = "Build A Plane"
local lastUpdated = "July 30, 2025"
wait(3)

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Strix-7 U7",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Loading interface...",
   LoadingSubtitle = "Against crashgrabs...",
   ShowText = "Seven U7", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = STRIXdada, -- Create a custom folder for your hub/game
      FileName = "Diddy hub"
   },

   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "NE9hs3wSjZ", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = false -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Support!",
      Subtitle = "<3",
      Note = "The key is {GNU} join the discord for Scripting help and to chat! .gg/NE9hs3wSjZ", -- Use this to tell the user how to get a key
      FileName = "GNUkeyDOTpng", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"GNU"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

Rayfield:Notify({
   Title = "Thanks for useing the script!",
   Content = "Thxx! <3",
   Duration = 6.5,
   Image = 4483362458,
})

local Tab = Window:CreateTab("Home", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Game info...")

Label = Tab:CreateLabel("Game: " .. gameTitle, 4483362458, Color3.fromRGB(255, 255, 255), false)
Label = Tab:CreateLabel("Last updated: " .. lastUpdated, 4483362458, Color3.fromRGB(255, 255, 255), false)
Label = Tab:CreateLabel("Scripted by OVERIAN1")


local Tab = Window:CreateTab("Cheats", 4483362458) -- Title, Image
local Section = Tab:CreateSection(" ")

local Button = Tab:CreateButton({
   Name = "Far!",
   Callback = function()
    game:GetService("Players").LocalPlayer:WaitForChild("MainClient")
    Character.HumanoidRootPart.CFrame = CFrame.new(48067, 197, -359)
   end,
})
