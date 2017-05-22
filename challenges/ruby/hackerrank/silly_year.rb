def silly_year(year)

years = [];

  while years.length < 10
    year += 1
    year_string = year.to_s
    first_two, middle_two, last_two = year_string[0..1].to_i, year_string[1..2].to_i, year_string[2..3].to_i
    years << year if first_two + last_two == middle_two
  end
  return years
end

puts silly_year(1974)
