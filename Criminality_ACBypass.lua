anticheat = nil
for _, value in next, getgc(true) do
    if type(value) == "table" and rawget(value, "A") and rawget(value, "B") and rawget(value, "GP") and rawget(value, "EN") and rawget(value, "CX1") then
        anticheat = value
    end
end
hookfunction(anticheat.CX1, function() return end)
hookfunction(anticheat.A, function() return end)
hookfunction(anticheat.B, function() return end)