def fractionSum(str)
    result = []
    str.each do |prob|
        x, y = prob.split("+")

        x1, x2 = x.split("/").map(&:to_i)
        y1, y2 = y.split("/").map(&:to_i)

        top = x1 + y1
        bottom = x2 + y2

        top.downto(2) do |i|
           if top % i == 0 && bottom % i == 0
             top = top / i
             bottom = bottom / i
           end
        end

        result << "#{top}/#{bottom}"
    end


    result

end
