---[CLIENT] Registers a new content type that is saveable into spawnlists.
--- Created/called by spawnmenu.CreateContentIcon.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/spawnmenu.AddContentType)
---@param name string An unique name of the content type.
---@param constructor fun(container: Panel, data: table) A function that is called whenever we need create a new panel for this content type.
---
--- It has two arguments:
---
---
--- Panel container - The container/parent of the new panel
---
---
--- table data - Data for the content type passed from spawnmenu.CreateContentIcon
function spawnmenu.AddContentType(name, constructor) end