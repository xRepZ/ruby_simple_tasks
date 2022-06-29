# формула (0 °C × 9/5) + 32 = 32 °F

def ToFahrenheit(degrees)
    degrees = (degrees * 9.0 / 5.0) + 32
    return degrees
end

# puts ToFahrenheit(4)

def HandleInput(input)
    if Integer(input, exception: false) != nil
        return false
    else
        puts "error, wrong input! Try again."
        return true
    end
end

n = gets
while HandleInput(n)
    n = gets
end
n = Integer(n)
puts ToFahrenheit(n)
