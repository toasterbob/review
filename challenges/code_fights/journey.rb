def add(param1, param2)
    param1 + param2
end

#century from year
def centuryFromYear(year)
    return year / 100 if year % 100 == 0
    year / 100 + 1
end

def centuryFromYear(year)
    year % 100 == 0 ? year/100 : year/100 + 1
end
