# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    return "" if strs.empty?
    return strs[0] if strs.length == 1

    i = 0
    compare = strs[0]
    result = ""
    while i < strs[0].length
        if strs.all? { |str| str[i] == compare[i]}
            result += compare[i]
        else
           i = strs[0].length
        end
        i += 1
    end
    result
end
