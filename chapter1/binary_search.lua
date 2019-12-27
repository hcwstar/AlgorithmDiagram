local data = {10, 90, 30, 120, 50, 60, 70, 80}
local count = 0
local function binary_search(array, item)
    local min = 0
    local max = #(array)
    while min <= max do
        count = count + 1
        local mid = math.ceil((min + max) / 2)
        local guess = data[mid]
        if guess == item then
            return mid
        end
        if guess > item then
            max = mid - 1
        else
            min = mid + 1
        end
    end
    return nil
end
print("binary_search -- item 100 -- pos =", binary_search(data, 90))
print("binary_search -- count = ", count)

