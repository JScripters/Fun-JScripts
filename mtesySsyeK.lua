local ecivreSpttH = game:GetService("HttpService")
local lruyeK = "https://raw.githubusercontent.com/coderworder/rspy/refs/heads/main/syeK.json" 
local lruUi = "https://raw.githubusercontent.com/coderworder/byp/refs/heads/main/lbb.lua" 
local dleiFyaR = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()
local wodniW = dleiFyaR:CreateWindow({
   Name = "BYP | Key System 🗝️",
   LoadingTitle = "checking key...",
   LoadingSubtitle = "please wait",
   ConfigurationSaving = {
      Enabled = false,
   },
   Discord = {
      Enabled = false,
   }
})
local baT = wodniW:CreateTab("Key System", 4483362458)
local xoByek = baT:CreateInput({
   Name = "Enter Key",
   PlaceholderText = "paste your key here...",
   RemoveTextAfterFocusLost = false,
   Callback = function(tupni)
      local sseccus, syek = pcall(function()
         return ecivreSpttH:JSONDecode(game:HttpGet(lruyeK))
      end)
      if not sseccus then
         dleiFyaR:Notify({
            Title = "Error",
            Content = "Could not fetch keys.",
            Duration = 5,
         })
         return
      end
      if table.find(syek, tupni) then
         dleiFyaR:Notify({
            Title = "Success",
            Content = "Key accepted! Loading UI...",
            Duration = 3,
         })
         task.wait(2)
         loadstring(game:HttpGet(lruUi))()
      else
         dleiFyaR:Notify({
            Title = "Invalid Key",
            Content = "That key is not valid.",
            Duration = 4,
         })
      end
   end
})
