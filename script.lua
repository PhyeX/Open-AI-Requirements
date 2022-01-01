ph = 166
eph = 166
el = 0

function calculate_reward ()
    local r = 0
    if data.health ~= 166 and data.health ~= 0 then
        local delta = data.health - ph
        r = r + delta
    end
    if data.enemy_health ~= 166 and data.enemy_health ~= 0 then
        local delta = data.enemy_health - eph 
        r = r - delta
    end
    if data.wins ~=0 then
        local delta = data.wins - el
        r = r + delta*100
    end
    el = data.wins
    eph = data.enemy_health
    ph = data.health
    return r
end
