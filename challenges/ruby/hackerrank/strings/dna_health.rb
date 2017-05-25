#!/bin/ruby

n = gets.strip.to_i
genes = gets.strip
genes = genes.split(' ')
health = gets.strip
health = health.split(' ').map(&:to_i)
s = gets.strip.to_i
health_arr = []

gene_hash = Hash.new

genes.each_with_index do |gene, i|
    gene_hash[gene] = health[i]
end

for a0 in (0..s-1)
    first,last,d = gets.strip.split(' ')
    first = first.to_i
    last = last.to_i
    count = 0

    first.upto(last) do |i|
        check = genes[i]

        c_length = check.length

        j = 0
        while j <= (d.length - c_length)

            count += health[i] if d.slice(j, c_length) == check
            j += 1
        end
    end
    health_arr << count
end

puts "#{health_arr.min} #{health_arr.max}"
