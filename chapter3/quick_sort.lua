local data = {10, 90, 30, 120, 50, 60, 70, 80}

    -- local function sum(data)
    --     local total = 0
    --     for k, v in pairs(data) do
    --         total = total + v
    --     end
    --     return total
    -- end
    -- print(sum(data))

    -- local function sum_rec(data)
    --     if #data == 0 then
    --         return 0
    --     end
    --     local num = data[#data]
    --     table.remove(data, #data)
    --     return num + sum_rec(data)
    -- end
    -- print(sum_rec(clone(data)))

    -- local function sum_rec_end(data, num)
    --     if #data == 0 then
    --         return num
    --     end
    --     num = num or 0
    --     num = num + data[#data]
    --     table.remove(data, #data)
    --     return sum_rec1(data, num)
    -- end
    -- print(sum_rec1(data))

    --     local function count(data, num)
    --         if #data == 0 then
    --             return num
    --         end
    --         num = num or 0
    --         num = num + 1
    --         table.remove(data, 1)
    --         return count(data, num)
    --     end
    --     print(count(data))

    -- local data = {10, 90, 30, 120, 50, 60, 70, 80}

    -- local function max(data)
    --     if #data == 1 then
    --         return data[1]
    --     end
    --     local num = table.remove(data, 1)
    --     local max = max(data)
    --     return math.max(num, max)
    -- end

    -- print(max(data))


    local data = {33, 55, 66, 55, 66, 777, 444, 80, 33, 33}

    local function table_contract(data)
        local d = {}
        for k, v in pairs(data) do
            table.insertto(d, v)
        end

        return d
    end

    local function quickSort(data)
        if #data < 2 then
            return data
        else
            math.newrandomseed()
            local pivot = math.random(1, #data)
            local pivotV = data[pivot]
            dump(pivotV, "pivotV")
            local leftList = {}
            for k, v in pairs(data) do
                if v and pivotV and v < pivotV then
                    table.insert(leftList, v)
                end
            end
            dump(leftList, "leftList")

            local rightList = {}
            for k, v in pairs(data) do
                if v and pivotV and v > pivotV then
                    table.insert(rightList, v)
                end
            end
            dump(rightList, "rightList")

            return table_contract({quickSort(leftList), {pivotV}, quickSort(rightList)})
        end
    end

    dump(quickSort(data))