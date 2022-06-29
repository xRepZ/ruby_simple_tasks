arr = [1, 2, 12, 34, 35, 6, 0, 34, 122, 124, 789, 999, 33, 54, 763, 893]

def MaxNum(array)
    fmax = array[0]
    smax = array[0]
    for el in array
        if el > fmax
        fmax = el
        end
        if smax < fmax
            smax, fmax = fmax, smax
        end
    end
    return arr = [smax, fmax]
end

puts MaxNum(arr)