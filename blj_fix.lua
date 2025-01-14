-- name: BLJ Patch
-- description: Simple mod that patches the BLJ.  

local function mario_update(m)
    if (m.action == ACT_LONG_JUMP_LAND)
    and m.forwardVel < -15 then
        m.forwardVel = 0
    end
end
  
-- hooks --
hook_event(HOOK_MARIO_UPDATE, mario_update)
