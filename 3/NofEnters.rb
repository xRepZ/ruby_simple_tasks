arr = [nil, 2, :foo, "bar", "foo", "apple", "orange", :orange, 45, nil, :foo, :bar, 25, 45, :apple, "bar", nil]

def NumOfEnt(arr)
    map = {}
    for el in arr
        if map[el] != nil
            map[el] += 1
        end
        if map[el] == nil
            map[el] = 1
        end
    end
    return map
end

puts NumOfEnt(arr)