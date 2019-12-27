local data = {10, 90, 30, 120, 50, 60, 70, 80}

local function findSmallest(array)
    local smallesetIndex = 1
    local smallesetItem = array[smallesetIndex]
    for i, v in ipairs(array) do
        if v < smallesetItem then
            smallesetItem = v
            smallesetIndex = i
        end
    end
    return smallesetIndex
end

local function select_sort(array)
    local newArray = {}
    while #array > 0 do
        local smallesetIndex = findSmallest(array)
        local smallesetItem = array[smallesetIndex]
        table.insert(newArray, smallesetItem)
        table.remove(array, smallesetIndex)
    end
    return newArray
end
print(table.concat(select_sort(data),"|"))
