for _, value in next, getgc(true) do 
    if typeof(value) == 'table' then 
        local Adonis = rawget(value, "indexInstance")

        if Adonis then 
            value.tvk = {"kick", function() return task.wait(9e9) end} 
        end
    end
end