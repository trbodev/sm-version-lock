dofile( "$CONTENT_DATA/Scripts/version.lua" )

---@class Player : PlayerClass
Player = class( nil )

function Player.server_onCreate( self )
	print("Player.server_onCreate")
end

function Player:sv_checkVersion(version)
	self.network:sendToClient( self.player, "cl_checkVersion", version )
end

function Player:cl_checkVersion(version)
	if version ~= VERSION then sm.gui.chatMessage("#ff0000VERSION MISSMATCH!!!!!\nHost Version: "..version.."Client Version: "..VERSION) end
end