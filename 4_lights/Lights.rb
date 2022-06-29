def Commands(key)
    light = {red: "Стоять", yellow: "Ждать", green: "Идти", end: 0}
    if light[key] == nil
        puts "wrong key"
    end
    if key!= :end
        puts light[key]
    else
        return false 
    end
    return true
end

k = gets.chomp
while Commands(k.to_sym)
    k = gets.chomp
end