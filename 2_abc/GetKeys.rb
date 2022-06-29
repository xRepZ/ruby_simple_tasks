arr = [{a: 1, b: 2, c: 45}, {d: 123, c: 12}, {e: 87}]
def GetAllKeys(array)
    kArr = []
    for el in array
        el.each_key do |key|
        kArr << key
        end
    end
    return kArr
end

def GetAllValues(array)
    vArr = []
    for el in array
        el.each_value do |val|
        vArr << val
        end
    end
    return vArr
end

def SumAllValues(array)
    sum = 0
    for el in array
        el.each_value do |val|
        sum += val
        end
    end
    return sum
end

puts GetAllKeys(arr)
puts GetAllValues(arr)
puts SumAllValues(arr)