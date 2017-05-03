puts '%.6f' % (1.0/2) # 0.500000

negative, rest = [0, -1, 2, 3, -9].partition{|n| n < 0 } #[[-1, -9], [0, 2, 3]]
positive, zero = rest.partition{|n| n > 0} #
p negative, positive, zero
